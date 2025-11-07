import 'package:flutter_ai_shop_test/features/products/data/models/product/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_response_model.freezed.dart';
part 'product_response_model.g.dart';

@freezed
abstract class ProductsResponse with _$ProductsResponse {
  const factory ProductsResponse({
    required List<Product> products,
    int? total,
    int? skip,
    int? limit,
  }) = _ProductsResponse;

  factory ProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseFromJson(json);
}
