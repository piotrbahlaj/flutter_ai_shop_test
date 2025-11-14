import 'package:flutter_ai_shop_test/core/utils/result.dart';
import 'package:flutter_ai_shop_test/features/products/data/models/product/product_model.dart';
import 'package:flutter_ai_shop_test/features/products/domain/repositories/products_repository.dart';

class GetProductsUseCase {
  final ProductsRepository repo;
  GetProductsUseCase(this.repo);
  Future<Result<List<Product>>> call() => repo.getProducts();
}
