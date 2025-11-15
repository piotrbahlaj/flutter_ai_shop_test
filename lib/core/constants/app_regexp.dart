abstract class AppRegExp {
  AppRegExp._();
  static final RegExp geminiJsonPrefix = RegExp(r'^```json\s*');
  static final RegExp geminiJsonSuffix = RegExp(r'```$');
}
