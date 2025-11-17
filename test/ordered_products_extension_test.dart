import 'package:flutter_ai_shop_test/core/extensions/ordered_products_extension.dart';
import 'package:flutter_ai_shop_test/features/order/data/models/ordered_product/ordered_product_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('totalPrice should calculate correctly', () {
    final products = [
      OrderedProduct(title: "A", price: 100, quantity: 2, isFound: true),
      OrderedProduct(title: "B", price: 50, quantity: 3, isFound: true),
      OrderedProduct(title: "C", price: null, quantity: 1, isFound: false),
    ];

    expect(products.totalPrice, 350.0);
  });

  test('notFoundTitles should join with commas', () {
    final products = [
      OrderedProduct(title: "banana", isFound: false, quantity: 1),
      OrderedProduct(title: "dragon fruit", isFound: false, quantity: 3),
      OrderedProduct(title: "iPhone", isFound: true, quantity: 2),
    ];

    expect(products.notFoundTitles, "banana, dragon fruit");
  });
}
