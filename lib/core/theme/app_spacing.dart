import 'package:flutter/material.dart';

class AppSpacing {
  AppSpacing._();
  static const double xs = 4.0;
  static const double s = 8.0;
  static const double m = 12.0;
  static const double l = 16.0;
  static const double xl = 24.0;
  static const double xxl = 32.0;

  static EdgeInsets padAll(double size) => EdgeInsets.all(size);
  static EdgeInsets padH(double size) => EdgeInsets.symmetric(horizontal: size);
  static EdgeInsets padV(double size) => EdgeInsets.symmetric(vertical: size);
}
