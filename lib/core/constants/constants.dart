class Constants {
  Constants._();
  // API Client
  static const headerAuthorization = 'x-goog-api-key';
  static const headerContentType = 'Content-Type';
  static const contentTypeJson = 'application/json';
  static const geminiDio = 'geminiDio';
  static const dummyJsonDio = 'dummyJsonDio';

  // API endpoints
  static const productsEndpoint = '/products?limit=50';
  static const geminiEndpoint = '/models/gemini-2.5-flash:generateContent';

  // Durations
  static const snackbarDuration = 3;
  static const defaultConnectionTimeout = 10;

  // Failure messages
  static const networkFailure = 'No internet connection';
  static const productsFailure = 'Failed to load products';
  static const aiFailure = 'AI request failed';
  static const unknownFailure = 'An unknown error occurred';
  static const noProductsError = 'No products found';
  static const emptyCatalogError = 'Product catalog is empty.';

  // Miscallaneous
  static const retryButtonText = 'Retry';
  static const searchBarHintText = 'Search products';
  static const iconSizeLarge = 64.0;
  static const products = 'Products';
  static const order = 'Order';
  static const orderHintText = 'Place your order details here...';
  static const orderTitle = 'Your Order';
  static const buttonDefaultHeight = 48.0;
}
