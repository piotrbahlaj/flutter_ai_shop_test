import 'package:flutter/material.dart';
import 'package:flutter_ai_shop_test/features/products/data/models/product/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.item});

  final Product item;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        title: Text(item.title, maxLines: 1, overflow: TextOverflow.ellipsis),
        subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
      ),
    );
  }
}
