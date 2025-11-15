import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_ai_shop_test/core/constants/app_regexp.dart';
import 'package:flutter_ai_shop_test/core/error/failures.dart';
import 'package:flutter_ai_shop_test/core/network/error_mapper.dart';
import 'package:flutter_ai_shop_test/core/utils/result.dart';
import 'package:flutter_ai_shop_test/features/order/data/models/ordered_product/ordered_product_model.dart';
import 'package:flutter_ai_shop_test/features/order/data/service/order_service.dart';
import 'package:flutter_ai_shop_test/features/order/domain/repositories/order_repository.dart';
import 'package:flutter_ai_shop_test/features/products/data/models/product/product_model.dart';

class OrderRepositoryImpl implements OrderRepository {
  final OrderService _orderService;
  OrderRepositoryImpl(this._orderService);

  @override
  Future<Result<List<OrderedProduct>>> parseOrder(
    String userInput,
    List<Product> catalog,
  ) async {
    try {
      final catalogJson = jsonEncode(
        catalog.map((product) => product.toJson()).toList(),
      );
      final body = _buildGeminiRequest(userInput, catalogJson);
      final response = await _orderService.parseOrder(body);
      final rawContent = response.candidates.first.content.parts.first.text;
      final content = _cleanGeminiJson(rawContent);
      final List<dynamic> orderJson = jsonDecode(content);
      final orderedProducts = orderJson
          .map((item) => OrderedProduct.fromJson(item as Map<String, dynamic>))
          .toList();
      return Result.success(orderedProducts);
    } on DioException catch (e) {
      return Result.failure(
        mapDioExceptionToFailure(e, source: FailureSource.ai),
      );
    } on Exception catch (_) {
      return Result.failure(const UnknownFailure());
    }
  }

  String _cleanGeminiJson(String raw) {
    return raw
        .replaceAll(AppRegExp.geminiJsonPrefix, '')
        .replaceAll(AppRegExp.geminiJsonSuffix, '')
        .trim();
  }

  Map<String, dynamic> _buildGeminiRequest(
    String userInput,
    String catalogJson,
  ) {
    final systemPrompt =
        """
        You are an order parser. Match items from the user's order to the catalog.
        Return a JSON array of items. Each item must have the following keys:
        - id: number (if found, otherwise null)
        - title: string (use the user's requested text if not found)
        - price: number (if found, otherwise null)
        - quantity: number
        - isFound: boolean
        Always use the exact keys above. Do not rename them.

        Rules:
        - Match titles closely (case-insensitive).
        - Extract quantity (default: 1).
        - If no match: "isFound": false.
        - Use exact id, title, price from catalog.
        - Return ONLY valid JSON array.

        Catalog:
        $catalogJson
        """;

    return {
      "contents": [
        {
          "parts": [
            {"text": systemPrompt},
            {"text": userInput},
          ],
        },
      ],
      "generationConfig": {"temperature": 0.2},
    };
  }
}
