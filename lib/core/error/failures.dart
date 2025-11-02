import 'package:flutter_ai_shop_test/core/constants/constants.dart';

abstract class Failure {
  final String message;
  const Failure(this.message);
}

class NetworkFailure extends Failure {
  const NetworkFailure([super.message = Constants.networkFailure]);
}

class ProductsFailure extends Failure {
  const ProductsFailure([super.message = Constants.productsFailure]);
}

class AiFailure extends Failure {
  const AiFailure([super.message = Constants.aiFailure]);
}

class UnknownFailure extends Failure {
  const UnknownFailure([super.message = Constants.unknownFailure]);
}
