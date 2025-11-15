import 'package:flutter/material.dart';
import 'package:flutter_ai_shop_test/core/constants/constants.dart';
import 'package:flutter_ai_shop_test/core/theme/app_colors.dart';
import 'package:flutter_ai_shop_test/core/theme/app_spacing.dart';
import 'package:flutter_ai_shop_test/features/order/data/models/ordered_product/ordered_product_model.dart';

class OrderDataTable extends StatelessWidget {
  const OrderDataTable({
    super.key,
    required this.products,
    required this.totalPrice,
  });

  final List<OrderedProduct> products;
  final double totalPrice;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DataTable(
            headingRowColor: WidgetStateProperty.all(AppColors.backgroundGray),
            columns: const [
              DataColumn(
                label: Text(
                  Constants.dataTableColumnProduct,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  Constants.dataTableColumnPrice,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  Constants.dataTableColumnQuantity,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  Constants.dataTableColumnSum,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
            rows: products.map((product) {
              final sumPrice = (product.price ?? 0) * product.quantity;
              return DataRow(
                cells: [
                  DataCell(
                    Text(
                      product.title,
                      style: TextStyle(
                        color: product.isFound ? null : AppColors.errorRed,
                      ),
                    ),
                  ),
                  DataCell(
                    Text(
                      product.isFound
                          ? '\$${product.price!.toStringAsFixed(2)}'
                          : '-',
                    ),
                  ),
                  DataCell(
                    Text(product.isFound ? product.quantity.toString() : '-'),
                  ),
                  DataCell(
                    Text(
                      product.isFound
                          ? '\$${sumPrice.toStringAsFixed(2)}'
                          : '-',
                    ),
                  ),
                ],
              );
            }).toList(),
          ),

          const SizedBox(height: AppSpacing.l),
          Text(
            '${Constants.dataTableTotalLabel} \$${totalPrice.toStringAsFixed(2)}',
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }
}
