import 'package:flutter_ai_shop_test/core/extensions/ordered_products_extension.dart';
import 'package:flutter_ai_shop_test/core/utils/result.dart';
import 'package:flutter_ai_shop_test/features/order/data/models/ordered_product/ordered_product_model.dart';
import 'package:flutter_ai_shop_test/features/order/domain/repositories/order_repository.dart';
import 'package:flutter_ai_shop_test/features/order/domain/usecases/parse_order_usecase.dart';
import 'package:flutter_ai_shop_test/features/products/data/models/product/product_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockOrderRepository extends Mock implements OrderRepository {}

void main() {
  late ParseOrderUseCase useCase;
  late MockOrderRepository mockRepository;

  setUp(() {
    mockRepository = MockOrderRepository();
    useCase = ParseOrderUseCase(mockRepository);
  });

  final catalog = [
    Product(id: 1, title: "iPhone 9", price: 549.99),
    Product(id: 2, title: "MacBook Pro", price: 1749.99),
  ];

  test(
    'should return ordered products when user asks for existing items',
    () async {
      const userInput = "2 iPhone 9 and one macbook pro";
      final expectedProducts = [
        OrderedProduct(
          title: "iPhone 9",
          price: 549.99,
          quantity: 2,
          isFound: true,
          id: 1,
        ),
        OrderedProduct(
          title: "MacBook Pro",
          price: 1749.99,
          quantity: 1,
          isFound: true,
          id: 2,
        ),
      ];

      when(
        () => mockRepository.parseOrder(userInput, catalog),
      ).thenAnswer((_) async => Success(expectedProducts));

      final result = await useCase(userInput, catalog);

      expect(result, isA<Success<List<OrderedProduct>>>());
      final success = result as Success<List<OrderedProduct>>;
      expect(success.data.totalPrice, closeTo(2849.97, 0.01));
      verify(() => mockRepository.parseOrder(userInput, catalog)).called(1);
    },
  );

  test('should handle not-found items gracefully', () async {
    const userInput = "5 bananas";
    final expected = [
      OrderedProduct(
        title: "bananas",
        price: null,
        quantity: 5,
        isFound: false,
      ),
    ];

    when(
      () => mockRepository.parseOrder(userInput, catalog),
    ).thenAnswer((_) async => Success(expected));

    final result = await useCase(userInput, catalog);

    expect(result, isA<Success<List<OrderedProduct>>>());
    final data = (result as Success<List<OrderedProduct>>).data;
    expect(data.notFound.isNotEmpty, true);
    expect(data.notFoundTitles, "bananas");
  });
}
