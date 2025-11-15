import 'package:flutter/material.dart';
import 'package:flutter_ai_shop_test/core/theme/app_spacing.dart';
import 'package:flutter_ai_shop_test/features/order/data/models/ordered_product/ordered_product_model.dart';
import 'package:flutter_ai_shop_test/features/order/presentation/bloc/order_bloc.dart';
import 'package:flutter_ai_shop_test/features/order/presentation/ui/widgets/order_button.dart';
import 'package:flutter_ai_shop_test/features/order/presentation/ui/widgets/order_data_table.dart';
import 'package:flutter_ai_shop_test/features/order/presentation/ui/widgets/order_text_field.dart';
import 'package:flutter_ai_shop_test/features/order/presentation/ui/widgets/order_title.dart';
import 'package:flutter_ai_shop_test/shared/widgets/error_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OrderView extends HookWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    final orderBloc = context.read<OrderBloc>();
    final controller = useTextEditingController();

    return Padding(
      padding: EdgeInsets.all(AppSpacing.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: AppSpacing.xl,
        children: [
          OrderTitle(),
          OrderTextField(controller: controller),
          OrderButton(
            onPressed: () => _onOrderSubmittedHandler(controller, orderBloc),
          ),
          Expanded(
            child: BlocBuilder<OrderBloc, OrderState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox.shrink(),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  success: (products) => _SuccessBody(products: products),
                  error: (msg) => ErrorBody(
                    message: msg,
                    onPressed: () =>
                        _onOrderSubmittedHandler(controller, orderBloc),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _SuccessBody extends StatelessWidget {
  final List<OrderedProduct> products;

  const _SuccessBody({required this.products});

  @override
  Widget build(BuildContext context) {
    final totalPrice = products.fold<double>(
      0,
      (sum, product) => sum + (product.price * product.quantity),
    );
    return OrderDataTable(products: products, totalPrice: totalPrice);
  }
}

void _onOrderSubmittedHandler(
  TextEditingController controller,
  OrderBloc orderBloc,
) {
  final input = controller.text.trim();
  if (input.isNotEmpty) {
    orderBloc.add(OrderEvent.submit(input));
  }
}
