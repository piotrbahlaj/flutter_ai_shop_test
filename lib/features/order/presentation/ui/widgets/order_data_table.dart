import 'package:flutter/material.dart';
import 'package:flutter_ai_shop_test/core/constants/constants.dart';
import 'package:flutter_ai_shop_test/core/extensions/ordered_products_extension.dart';
import 'package:flutter_ai_shop_test/core/theme/app_colors.dart';
import 'package:flutter_ai_shop_test/core/theme/app_spacing.dart';
import 'package:flutter_ai_shop_test/core/utils/data_column_header.dart';
import 'package:flutter_ai_shop_test/features/order/data/models/ordered_product/ordered_product_model.dart';

class OrderDataTable extends StatelessWidget {
  const OrderDataTable({super.key, required this.products});

  final List<OrderedProduct> products;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DataTable(
            headingRowColor: WidgetStateProperty.all(AppColors.backgroundGray),
            columns: [
              buildDataColumnHeader(Constants.dataTableColumnProduct),
              buildDataColumnHeader(Constants.dataTableColumnPrice),
              buildDataColumnHeader(Constants.dataTableColumnQuantity),
              buildDataColumnHeader(Constants.dataTableColumnSum),
            ],
            rows: products.map((product) {
              final subtotal = product.isFound
                  ? (product.price! * product.quantity)
                  : 0.0;
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
                          ? '\$${subtotal.toStringAsFixed(2)}'
                          : '-',
                    ),
                  ),
                ],
              );
            }).toList(),
          ),

          const SizedBox(height: AppSpacing.l),
          Text(
            '${Constants.dataTableTotalLabel} \$${products.totalPrice.toStringAsFixed(2)}',
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
