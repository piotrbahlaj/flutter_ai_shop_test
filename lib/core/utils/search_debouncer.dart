import 'dart:async';

import 'package:flutter/material.dart';

class SearchDebouncer {
  final int milliseconds;
  VoidCallback? action;
  Timer? _timer;

  SearchDebouncer({required this.milliseconds});

  void run(VoidCallback action) {
    if (_timer?.isActive ?? false) _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  void dispose() {
    _timer?.cancel();
  }
}
