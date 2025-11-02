import 'package:flutter/material.dart';
import 'package:flutter_ai_shop_test/features/order/presentation/ui/order_view.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  static const path = '/order';

  @override
  Widget build(BuildContext context) {
    return const OrderView();
  }
}
