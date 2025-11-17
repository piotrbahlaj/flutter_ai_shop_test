import 'package:flutter/material.dart';
import 'package:flutter_ai_shop_test/core/theme/app_colors.dart';

class AppCircularProgressIndicator extends StatelessWidget {
  const AppCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      strokeWidth: 3.0,
      valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryBlack),
    );
  }
}
