import 'package:dio/dio.dart';
import 'package:flutter_ai_shop_test/config/environment/environment_config_interface.dart';
import 'package:flutter_ai_shop_test/core/constants/constants.dart';
import 'package:flutter_ai_shop_test/core/network/loggin_interceptor.dart';

class ApiClient {
  final EnvironmentConfigInterface env;
  ApiClient(this.env);

  Dio _baseDio() {
    final dio = Dio(
      BaseOptions(
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

  Dio geminiDio() {
    return _baseDio()
      ..options = BaseOptions(
        baseUrl: env.geminiBaseUrl,
        headers: {
          Constants.headerContentType: Constants.contentTypeJson,
          Constants.headerAuthorization: env.geminiApiKey,
        },
      );
  }

  Dio dummyJsonDio() {
    return _baseDio()
      ..options = BaseOptions(
        baseUrl: env.dummyJsonBaseUrl,
        headers: {Constants.headerContentType: Constants.contentTypeJson},
      );
  }
}
