import 'package:flutter_ai_shop_test/core/error/failures.dart';

abstract class Result<T> {
  const Result();
  factory Result.success(T data) = Success<T>;
  factory Result.failure(Failure failure) = Error<T>;
}

class Success<T> extends Result<T> {
  final T data;
  const Success(this.data);
}

class Error<T> extends Result<T> {
  final Failure failure;
  const Error(this.failure);
}
