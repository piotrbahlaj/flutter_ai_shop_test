import 'package:flutter/material.dart';

DataColumn buildDataColumnHeader(String title) {
  return DataColumn(
    label: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
  );
}
