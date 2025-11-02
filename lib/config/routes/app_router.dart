import 'package:flutter_ai_shop_test/features/order/presentation/ui/order_screen.dart';
import 'package:flutter_ai_shop_test/features/products/presentation/ui/products_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/products',
  routes: [
    GoRoute(
      path: ProductsScreen.path,
      builder: (context, state) => const ProductsScreen(),
    ),
    GoRoute(
      path: OrderScreen.path,
      builder: (context, state) => const OrderScreen(),
    ),
  ],
);
