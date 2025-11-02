import 'package:flutter/material.dart';
import 'package:flutter_ai_shop_test/config/di/di_container.dart';
import 'package:flutter_ai_shop_test/features/products/presentation/ui/products_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  setupDependencies();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: ProductsScreen()),
    );
  }
}
