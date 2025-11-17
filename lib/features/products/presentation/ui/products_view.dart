import 'package:flutter/material.dart';
import 'package:flutter_ai_shop_test/core/constants/constants.dart';
import 'package:flutter_ai_shop_test/core/theme/app_spacing.dart';
import 'package:flutter_ai_shop_test/features/products/data/models/product/product_model.dart';
import 'package:flutter_ai_shop_test/features/products/presentation/ui/widgets/product_card.dart';
import 'package:flutter_ai_shop_test/shared/widgets/app_circular_progress_indicator.dart';
import 'package:flutter_ai_shop_test/shared/widgets/app_search_bar.dart';
import 'package:flutter_ai_shop_test/shared/widgets/error_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/products_bloc.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        AppSearchBar(),
        Expanded(child: _ProductsBody()),
      ],
    );
  }
}

class _ProductsBody extends StatelessWidget {
  const _ProductsBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        return state.when(
          loading: () => const Center(child: AppCircularProgressIndicator()),
          loaded: (products) => _ProductsList(products: products),
          error: (msg) => ErrorBody(
            message: msg,
            onPressed: () {
              context.read<ProductsBloc>().add(
                const ProductsEvent.fetchProducts(),
              );
            },
          ),
        );
      },
    );
  }
}

class _ProductsList extends StatelessWidget {
  final List<Product> products;
  const _ProductsList({required this.products});

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return const Center(child: Text(Constants.noProductsError));
    }
    return ListView.builder(
      padding: AppSpacing.padH(AppSpacing.m),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final item = products[index];
        return ProductCard(item: item);
      },
    );
  }
}
