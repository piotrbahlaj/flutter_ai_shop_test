import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class AppLoggingInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      debugPrint(
        '➡️ [${options.method}] ${options.uri}\n'
        'Headers: ${options.headers}\n'
        'Data: ${options.data}',
      );
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      debugPrint(
        '✅ [${response.statusCode}] ${response.requestOptions.uri}\n'
        'Response: ${response.data}',
      );
    }
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      debugPrint(
        '❌ [${err.response?.statusCode}] ${err.requestOptions.uri}\n'
        'Error: ${err.message}\n'
        'Response: ${err.response?.data}',
      );
    }
    handler.next(err);
  }
}
