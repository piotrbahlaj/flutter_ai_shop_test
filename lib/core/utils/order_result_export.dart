import 'dart:convert';
import 'dart:io' show File, Directory;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ai_shop_test/core/constants/constants.dart';
import 'package:flutter_ai_shop_test/core/extensions/context_extensions.dart';
import 'package:flutter_ai_shop_test/core/extensions/ordered_products_extension.dart';
import 'package:flutter_ai_shop_test/features/order/data/models/ordered_product/ordered_product_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:universal_platform/universal_platform.dart';

class OrderResultExport {
  OrderResultExport._();

  static Future<String?> exportToJson({
    required List<OrderedProduct> products,
    required String userInput,
    required BuildContext context,
  }) async {
    final exportData = {
      "user_order": userInput,
      "exported_at": DateTime.now().toIso8601String(),
      "total_price_usd": products.totalPrice,
      "found_items": products
          .where((item) => item.isFound)
          .map(
            (item) => {
              "title": item.title,
              "price": item.price,
              "quantity": item.quantity,
              "subtotal": item.price != null
                  ? item.price! * item.quantity
                  : 0.0,
            },
          )
          .toList(),
      "not_found_items": products
          .where((item) => !item.isFound)
          .map((item) => item.title)
          .toList(),
      "summary": {
        "items_found": products.where((item) => item.isFound).length,
        "items_missing": products.where((item) => !item.isFound).length,
        "grand_total": products.totalPrice,
      },
    };

    final jsonString = const JsonEncoder.withIndent('  ').convert(exportData);

    // WEB EXPORT
    if (UniversalPlatform.isWeb) {
      try {
        await SharePlus.instance.share(
          ShareParams(text: jsonString, subject: Constants.orderExportSubject),
        );
        if (context.mounted) {
          context.showSnackbar(message: Constants.orderExportSuccessMessage);
        }
      } catch (e) {
        await Clipboard.setData(ClipboardData(text: jsonString));
        if (context.mounted) {
          context.showSnackbar(message: Constants.orderExportCopiedMessage);
        }
      }
      return null;
    }

    // MOBILE & DESKTOP
    Directory directory;

    if (UniversalPlatform.isAndroid) {
      directory = Directory(Constants.androidDownloadsDirectory);
      if (!await directory.exists()) {
        directory =
            (await getExternalStorageDirectory()) ??
            await getTemporaryDirectory();
      }
    } else if (UniversalPlatform.isIOS || UniversalPlatform.isMacOS) {
      directory = await getApplicationDocumentsDirectory();
    } else {
      directory =
          await getDownloadsDirectory() ??
          await getApplicationDocumentsDirectory();
    }

    final fileName = "order_${DateTime.now().millisecondsSinceEpoch}.json";
    final file = File('${directory.path}/$fileName');
    await file.writeAsString(jsonString);

    final savedPath = file.path;

    if (context.mounted) {
      context.showSnackbar(
        message: '${Constants.orderExportSaveResult}$savedPath',
      );
    }

    return savedPath;
  }
}
