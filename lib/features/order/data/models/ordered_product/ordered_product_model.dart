import 'package:freezed_annotation/freezed_annotation.dart';

part 'ordered_product_model.freezed.dart';
part 'ordered_product_model.g.dart';

@freezed
abstract class OrderedProduct with _$OrderedProduct {
  const OrderedProduct._();

  const factory OrderedProduct({
    int? id,
    required String title,
    double? price,
    required int quantity,
    required bool isFound,
  }) = _OrderedProduct;

  factory OrderedProduct.fromJson(Map<String, dynamic> json) =>
      _$OrderedProductFromJson(json);
}
