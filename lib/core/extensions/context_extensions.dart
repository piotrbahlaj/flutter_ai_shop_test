import 'package:flutter/material.dart';
import 'package:flutter_ai_shop_test/core/constants/constants.dart';

extension ContextExtensions on BuildContext {
  void showSnackbar({
    required String message,
    Duration duration = const Duration(seconds: Constants.snackbarDuration),
    Color? backgroundColor,
  }) => ScaffoldMessenger.of(this)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration,
        backgroundColor: backgroundColor,
      ),
    );
}
