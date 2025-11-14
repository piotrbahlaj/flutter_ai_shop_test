import 'package:dio/dio.dart';
import 'package:flutter_ai_shop_test/core/error/failures.dart';
import 'package:flutter_ai_shop_test/core/network/error_mapper.dart';
import 'package:flutter_ai_shop_test/core/utils/result.dart';
import 'package:flutter_ai_shop_test/features/products/data/models/product/product_model.dart';
import 'package:flutter_ai_shop_test/features/products/data/service/products_service.dart';
import 'package:flutter_ai_shop_test/features/products/domain/repositories/products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final ProductsService _service;
  ProductsRepositoryImpl(this._service);

  @override
  Future<Result<List<Product>>> getProducts() async {
    try {
      final response = await _service.getProducts();
      return Result.success(response.products);
    } on DioException catch (e) {
      return Result.failure(
        mapDioExceptionToFailure(e, source: FailureSource.products),
      );
    } on Exception catch (_) {
      return Result.failure(const UnknownFailure());
    }
  }
}
