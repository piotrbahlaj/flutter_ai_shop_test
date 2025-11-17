import 'package:dio/dio.dart';
import 'package:flutter_ai_shop_test/core/error/failures.dart';
import 'package:flutter_ai_shop_test/core/utils/result.dart';
import 'package:flutter_ai_shop_test/features/order/data/models/gemini_response/gemini_response_model.dart';
import 'package:flutter_ai_shop_test/features/order/data/models/ordered_product/ordered_product_model.dart';
import 'package:flutter_ai_shop_test/features/order/data/repositories/order_repository_impl.dart';
import 'package:flutter_ai_shop_test/features/order/data/service/order_service.dart';
import 'package:flutter_ai_shop_test/features/products/data/models/product/product_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockOrderService extends Mock implements OrderService {}

void main() {
  late OrderRepositoryImpl repository;
  late MockOrderService mockService;

  setUp(() {
    mockService = MockOrderService();
    repository = OrderRepositoryImpl(mockService);
  });

  final catalog = [Product(id: 1, title: "iPhone 9", price: 549.99)];

  test('should return Success when Gemini returns valid JSON', () async {
    const userInput = "1 iPhone 9";

    when(() => mockService.parseOrder(any())).thenAnswer(
      (_) async => GeminiResponse(
        candidates: [
          GeminiCandidate(
            content: GeminiContent(
              parts: [
                GeminiPart(
                  text: '''```json
                  [{"title":"iPhone 9","price":549.99,"quantity":1,"isFound":true,"id":1}]
                  ```''',
                ),
              ],
            ),
          ),
        ],
      ),
    );

    final result = await repository.parseOrder(userInput, catalog);

    expect(result, isA<Success<List<OrderedProduct>>>());
    final data = (result as Success<List<OrderedProduct>>).data;
    expect(data.length, 1);
    expect(data.first.title, "iPhone 9");
    expect(data.first.isFound, true);
  });

  test('should return Error on DioException', () async {
    when(() => mockService.parseOrder(any())).thenThrow(
      DioException(
        requestOptions: RequestOptions(path: '/gemini'),
        type: DioExceptionType.connectionTimeout,
      ),
    );

    final result = await repository.parseOrder("test", catalog);

    expect(result, isA<Error<List<OrderedProduct>>>());
    final error = result as Error<List<OrderedProduct>>;
    expect(error.failure, isA<NetworkFailure>());
  });

  test('should return Error when JSON is invalid', () async {
    when(() => mockService.parseOrder(any())).thenAnswer(
      (_) async => GeminiResponse(
        candidates: [
          GeminiCandidate(
            content: GeminiContent(
              parts: [GeminiPart(text: "this is not json")],
            ),
          ),
        ],
      ),
    );

    final result = await repository.parseOrder("test", catalog);
    expect(result, isA<Error<List<OrderedProduct>>>());
  });
}
