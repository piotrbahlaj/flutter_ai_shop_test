import 'package:flutter/material.dart';
import 'package:flutter_ai_shop_test/core/constants/constants.dart';
import 'package:flutter_ai_shop_test/core/theme/app_colors.dart';
import 'package:flutter_ai_shop_test/core/theme/app_spacing.dart';

class OrderTextField extends StatelessWidget {
  const OrderTextField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 5,
      controller: controller,
      decoration: InputDecoration(
        hintText: Constants.orderHintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.m),
          borderSide: const BorderSide(color: AppColors.primaryBlack),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.m),
          borderSide: const BorderSide(color: AppColors.primaryBlack, width: 2),
        ),
        contentPadding: AppSpacing.padAll(AppSpacing.m),
      ),
    );
  }
}
