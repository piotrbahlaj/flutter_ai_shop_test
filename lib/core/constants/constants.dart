abstract class Constants {
  // API Client
  static const headerAuthorization = 'Authorization';
  static const headerContentType = 'Content-Type';
  static const contentTypeJson = 'application/json';
  static const openAiDio = 'openAiDio';
  static const dummyJsonDio = 'dummyJsonDio';

  // API endpoints
  static const productsEndpoint = '/products';

  // Durations
  static const snackbarDuration = 3;
  static const defaultConnectionTimeout = 10;

  // Failure messages
  static const networkFailure = 'No internet connection';
  static const productsFailure = 'Failed to load products';
  static const aiFailure = 'AI request failed';
  static const unknownFailure = 'An unknown error occurred';
}
