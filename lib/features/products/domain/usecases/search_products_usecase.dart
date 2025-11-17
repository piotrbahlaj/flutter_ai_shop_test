import 'package:flutter_ai_shop_test/features/products/data/models/product/product_model.dart';
import 'package:flutter_ai_shop_test/features/products/domain/repositories/products_repository.dart';

class SearchProductsUsecase {
  final ProductsRepository _productsRepository;
  SearchProductsUsecase(this._productsRepository);
  List<Product> call(String query) => _productsRepository.searchProducts(query);
}
