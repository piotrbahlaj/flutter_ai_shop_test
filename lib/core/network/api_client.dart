import 'package:dio/dio.dart';
import 'package:flutter_ai_shop_test/config/environment/environment_config_interface.dart';
import 'package:flutter_ai_shop_test/core/constants/constants.dart';
import 'package:flutter_ai_shop_test/core/network/loggin_interceptor.dart';

class ApiClient {
  EnvironmentConfigInterface environmentConfigInterface;
  ApiClient({required this.environmentConfigInterface}) {
    dio = _createDio();
  }
  late Dio dio;
  Dio _createDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: environmentConfigInterface.baseUrl,
        headers: {
          Constants.headerAuthorization:
              'Bearer ${environmentConfigInterface.apiKey}',
          Constants.headerContentType: Constants.contentTypeJson,
        },
        connectTimeout: const Duration(
          seconds: Constants.defaultConnectionTimeout,
        ),
        receiveTimeout: const Duration(
          seconds: Constants.defaultConnectionTimeout,
        ),
      ),
    );

    dio.interceptors.add(AppLoggingInterceptor());

    return dio;
  }
}
