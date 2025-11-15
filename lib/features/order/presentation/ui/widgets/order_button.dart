import 'package:flutter/material.dart';
import 'package:flutter_ai_shop_test/core/constants/constants.dart';
import 'package:flutter_ai_shop_test/core/theme/app_colors.dart';
import 'package:flutter_ai_shop_test/core/theme/app_spacing.dart';

class OrderButton extends StatelessWidget {
  final void Function() onPressed;
  const OrderButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.orderButtonBackground,
        foregroundColor: AppColors.primaryBlack,
        minimumSize: const Size(double.infinity, Constants.buttonDefaultHeight),
        padding: AppSpacing.padV(AppSpacing.m),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.m),
        ),
        elevation: 6,
      ),
      child: Text(
        Constants.order,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
          color: AppColors.primaryBlack,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
