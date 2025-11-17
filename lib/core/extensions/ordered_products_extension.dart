import 'package:flutter_ai_shop_test/features/order/data/models/ordered_product/ordered_product_model.dart';

extension OrderedProductListX on List<OrderedProduct> {
  double get totalPrice => where(
    (p) => p.isFound && p.price != null,
  ).fold(0.0, (sum, p) => sum + p.price! * p.quantity);

  int get totalQuantity =>
      where((p) => p.isFound).fold(0, (sum, p) => sum + p.quantity);

  List<OrderedProduct> get found => where((p) => p.isFound).toList();
  List<OrderedProduct> get notFound => where((p) => !p.isFound).toList();

  String get notFoundTitles => notFound.map((p) => p.title).join(', ');
}
