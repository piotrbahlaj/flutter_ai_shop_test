import 'package:dio/dio.dart';
import 'package:flutter_ai_shop_test/core/constants/constants.dart';
import 'package:flutter_ai_shop_test/features/order/data/models/gemini_response/gemini_response_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/network/api_client.dart';

part 'order_service.g.dart';

@RestApi()
abstract class OrderService {
  factory OrderService(ApiClient apiClient) =>
      _OrderService(apiClient.geminiDio());

  @POST(Constants.geminiEndpoint)
  Future<GeminiResponse> parseOrder(@Body() Map<String, dynamic> body);
}
