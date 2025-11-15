import 'package:flutter/material.dart';
import 'package:flutter_ai_shop_test/core/constants/constants.dart';
import 'package:flutter_ai_shop_test/core/theme/app_colors.dart';

class OrderTitle extends StatelessWidget {
  const OrderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      Constants.orderTitle,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
        fontWeight: FontWeight.bold,
        color: AppColors.primaryBlack,
      ),
    );
  }
}
