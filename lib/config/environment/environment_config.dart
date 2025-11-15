import 'package:flutter_ai_shop_test/config/environment/environment_config_interface.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvironmentConfig implements EnvironmentConfigInterface {
  @override
  String get geminiBaseUrl => dotenv.get('GEMINI_BASE_URL');

  @override
  String get dummyJsonBaseUrl => dotenv.get('DUMMYJSON_BASE_URL');

  @override
  String get geminiApiKey => dotenv.get('GEMINI_API_KEY');
}
