import 'package:flutter_ai_shop_test/core/utils/result.dart';
import 'package:flutter_ai_shop_test/features/products/data/models/product/product_model.dart';

abstract class ProductsRepository {
  Future<Result<List<Product>>> getProducts();
  List<Product>? get cachedProducts;
}
