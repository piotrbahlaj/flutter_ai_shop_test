import 'package:dio/dio.dart';

import '../error/failures.dart';

enum FailureSource { products, ai, unknown }

Failure mapDioExceptionToFailure(
  DioException e, {
  FailureSource source = FailureSource.unknown,
}) {
  if (e.type == DioExceptionType.connectionError ||
      e.type == DioExceptionType.connectionTimeout ||
      e.type == DioExceptionType.sendTimeout ||
      e.type == DioExceptionType.receiveTimeout) {
    return const NetworkFailure();
  }

  if (e.type == DioExceptionType.badResponse) {
    return switch (source) {
      FailureSource.ai => const AiFailure(),
      FailureSource.products => const ProductsFailure(),
      _ => const UnknownFailure(),
    };
  }

  return const UnknownFailure();
}
