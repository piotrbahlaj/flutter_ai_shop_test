import 'package:flutter/material.dart';
import 'package:flutter_ai_shop_test/features/products/presentation/ui/products_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(body: ProductsScreen()));
  }
}
