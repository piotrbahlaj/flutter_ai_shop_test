import 'package:flutter_ai_shop_test/features/products/data/models/product/product_model.dart';
import 'package:flutter_ai_shop_test/features/products/domain/repositories/products_repository.dart';

class GetCachedProductsUseCase {
  final ProductsRepository _productsRepository;

  GetCachedProductsUseCase(this._productsRepository);

  List<Product>? call() => _productsRepository.cachedProducts;
}
