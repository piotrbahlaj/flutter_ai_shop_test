import 'package:flutter/material.dart';
import 'package:flutter_ai_shop_test/config/di/di_container.dart';
import 'package:flutter_ai_shop_test/features/products/presentation/bloc/products_bloc.dart';
import 'package:flutter_ai_shop_test/features/products/presentation/ui/products_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProductsBloc>()..add(ProductsEvent.fetchProducts()),
      child: Scaffold(body: ProductsView()),
    );
  }
}
