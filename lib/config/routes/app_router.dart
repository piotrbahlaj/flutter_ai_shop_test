// config/routes/app_router.dart
import 'package:flutter_ai_shop_test/config/routes/app_shell.dart';
import 'package:flutter_ai_shop_test/core/constants/routes.dart';
import 'package:flutter_ai_shop_test/features/order/presentation/ui/order_screen.dart';
import 'package:flutter_ai_shop_test/features/products/presentation/ui/products_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: Routes.products,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return AppShell(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.products,
              builder: (context, state) => const ProductsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.order,
              builder: (context, state) => const OrderScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
