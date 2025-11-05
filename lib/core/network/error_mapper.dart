import 'package:dio/dio.dart';

import '../error/failures.dart';

enum FailureSource { products, ai }

Failure mapDioExceptionToFailure(
  DioException e, {
  required FailureSource source,
}) {
  if (e.type == DioExceptionType.connectionError ||
      e.type == DioExceptionType.connectionTimeout ||
      e.type == DioExceptionType.sendTimeout ||
      e.type == DioExceptionType.receiveTimeout) {
    return const NetworkFailure();
  }

  if (e.type == DioExceptionType.badResponse) {
    switch (source) {
      case FailureSource.ai:
        return const AiFailure();
      case FailureSource.products:
        return const ProductsFailure();
    }
  }

  return const UnknownFailure();
}
