import 'package:flutter_ai_shop_test/config/environment/environment_config_interface.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvironmentConfig implements EnvironmentConfigInterface {
  @override
  String get baseUrl => dotenv.get('OPENAI_BASE_URL');

  @override
  String get apiKey => dotenv.get('OPENAI_API_KEY');
}
