# Flutter AI Shop Test

A small app that demonstrates:

- Clean Architecture + BLoC
- Fetching products from https://dummyjson.com
- Natural language order input parsed by Google Gemini AI
- Matching ordered items against the catalog
- Displaying results in a DataTable with totals
- Search in product catalog
- Cross-platform JSON export of the order

Works on Android, iOS, Web, macOS, Windows, Linux.

## Setup & Environment

The app uses **Google Gemini API** to parse orders.

### Setup

1. Go to: https://aistudio.google.com/app/apikey
2. Create a new API key
3. Create `.env` file in project root:
   ```env
    GEMINI_API_KEY = `your_gemini_api_key`
    DUMMYJSON_BASE_URL = `https://dummyjson.com`
    GEMINI_BASE_URL = `https://generativelanguage.googleapis.com/v1beta`
   ```
   Replace `your_gemini_api_key` with your actual Gemini API key.

### How to run

Run these in terminal:

flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run

### Screenshots
