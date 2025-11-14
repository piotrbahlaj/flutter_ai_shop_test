import 'package:flutter/material.dart';
import 'package:flutter_ai_shop_test/core/constants/constants.dart';
import 'package:flutter_ai_shop_test/core/theme/app_spacing.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.padAll(AppSpacing.l),
      child: TextField(
        decoration: InputDecoration(
          hintText: Constants.searchBarHintText,
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSpacing.l),
          ),
          filled: true,
        ),
        onChanged: (query) {},
      ),
    );
  }
}
