import 'package:flutter/material.dart';
import 'package:flutter_ai_shop_test/config/di/di_container.dart';
import 'package:flutter_ai_shop_test/features/order/presentation/bloc/order_bloc.dart';
import 'package:flutter_ai_shop_test/features/order/presentation/ui/order_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<OrderBloc>(),
      child: const OrderView(),
    );
  }
}
