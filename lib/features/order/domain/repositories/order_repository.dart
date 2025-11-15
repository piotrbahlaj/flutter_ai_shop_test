import 'package:flutter_ai_shop_test/core/utils/result.dart';
import 'package:flutter_ai_shop_test/features/order/data/models/ordered_product/ordered_product_model.dart';
import 'package:flutter_ai_shop_test/features/products/data/models/product/product_model.dart';

abstract class OrderRepository {
  Future<Result<List<OrderedProduct>>> parseOrder(
    String userInput,
    List<Product> catalog,
  );
}
