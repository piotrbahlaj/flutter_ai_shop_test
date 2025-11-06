import 'package:dio/dio.dart';
import 'package:flutter_ai_shop_test/core/constants/constants.dart';
import 'package:flutter_ai_shop_test/features/products/data/models/product_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/network/api_client.dart';

part 'products_service.g.dart';

@RestApi()
abstract class ProductsService {
  factory ProductsService(ApiClient apiClient) =>
      _ProductsService(apiClient.dummyJsonDio());

  @GET(Constants.productsEndpoint)
  Future<List<Product>> getProducts();
}
