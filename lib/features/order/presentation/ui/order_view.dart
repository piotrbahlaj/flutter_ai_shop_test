import 'package:flutter/material.dart';
import 'package:flutter_ai_shop_test/core/constants/constants.dart';
import 'package:flutter_ai_shop_test/core/extensions/context_extensions.dart';
import 'package:flutter_ai_shop_test/core/extensions/ordered_products_extension.dart';
import 'package:flutter_ai_shop_test/core/theme/app_spacing.dart';
import 'package:flutter_ai_shop_test/features/order/data/models/ordered_product/ordered_product_model.dart';
import 'package:flutter_ai_shop_test/features/order/presentation/bloc/order_bloc.dart';
import 'package:flutter_ai_shop_test/features/order/presentation/ui/widgets/order_button.dart';
import 'package:flutter_ai_shop_test/features/order/presentation/ui/widgets/order_data_table.dart';
import 'package:flutter_ai_shop_test/features/order/presentation/ui/widgets/order_text_field.dart';
import 'package:flutter_ai_shop_test/features/order/presentation/ui/widgets/order_title.dart';
import 'package:flutter_ai_shop_test/shared/widgets/app_circular_progress_indicator.dart';
import 'package:flutter_ai_shop_test/shared/widgets/error_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OrderView extends HookWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return Padding(
      padding: EdgeInsets.all(AppSpacing.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: AppSpacing.xl,
        children: [
          const OrderTitle(),
          OrderTextField(controller: controller),
          OrderButton(
            onPressed: () => _submitOrder(context, controller),
            title: Constants.order,
          ),
          Expanded(
            child: BlocConsumer<OrderBloc, OrderState>(
              listener: (context, state) {
                state.maybeWhen(
                  success: (products) => _showNotFoundAlert(context, products),
                  orElse: () {},
                );
              },
              builder: (context, state) => state.when(
                initial: () => const SizedBox.shrink(),
                loading: () =>
                    const Center(child: AppCircularProgressIndicator()),
                success: (products) => OrderDataTable(
                  products: products,
                  userInputController: controller,
                ),
                error: (msg) => ErrorBody(
                  message: msg,
                  onPressed: () => _submitOrder(context, controller),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _submitOrder(BuildContext context, TextEditingController controller) {
  final input = controller.text.trim();
  if (input.isEmpty) {
    context.showSnackbar(message: Constants.emptyOrderAlert);
    return;
  }
  context.read<OrderBloc>().add(OrderEvent.submit(input));
}

void _showNotFoundAlert(BuildContext context, List<OrderedProduct> products) {
  if (products.notFound.isNotEmpty) {
    context.showSnackbar(
      message: '${Constants.notFoundItemAlert} ${products.notFoundTitles}',
    );
  }
}
