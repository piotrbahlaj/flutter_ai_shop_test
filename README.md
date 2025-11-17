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

1. Go to: https://aistudio.google.com/app/apikey
2. Create a new API key
3. Create `.env` file in project root:

   ```
    GEMINI_API_KEY = your_gemini_api_key
    DUMMYJSON_BASE_URL = https://dummyjson.com
    GEMINI_BASE_URL = https://generativelanguage.googleapis.com/v1beta
   ```

   Replace `your_gemini_api_key` with your actual Gemini API key.

## How to run

Run these in terminal:

```
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run
```

## Screenshots
<img width="300" alt="Simulator Screenshot - iPhone 17 Pro - 2025-11-17 at 18 31 09" src="https://github.com/user-attachments/assets/89b5e794-e022-4047-9a94-2d40c7a1f9c1" />
<img width="300" alt="Simulator Screenshot - iPhone 17 Pro - 2025-11-17 at 18 31 00" src="https://github.com/user-attachments/assets/5d31bbec-8172-491e-a38a-a8c914686c7c" />
<img width="300" alt="Simulator Screenshot - iPhone 17 Pro - 2025-11-17 at 18 26 17" src="https://github.com/user-attachments/assets/853e52b0-8e23-48fb-bbf3-1ff22bc460b6" />
<img width="300" alt="Simulator Screenshot - iPhone 17 Pro - 2025-11-17 at 18 26 57" src="https://github.com/user-attachments/assets/b1a65888-e356-452a-ba47-62ff2de1b5d1" />





