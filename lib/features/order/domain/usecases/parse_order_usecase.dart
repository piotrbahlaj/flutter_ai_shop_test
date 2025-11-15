import 'package:flutter_ai_shop_test/core/utils/result.dart';
import 'package:flutter_ai_shop_test/features/order/data/models/ordered_product/ordered_product_model.dart';
import 'package:flutter_ai_shop_test/features/order/domain/repositories/order_repository.dart';
import 'package:flutter_ai_shop_test/features/products/data/models/product/product_model.dart';

class ParseOrderUseCase {
  final OrderRepository _orderRepository;

  ParseOrderUseCase(this._orderRepository);

  Future<Result<List<OrderedProduct>>> call(
    String userInput,
    List<Product> catalog,
  ) async => _orderRepository.parseOrder(userInput, catalog);
}
