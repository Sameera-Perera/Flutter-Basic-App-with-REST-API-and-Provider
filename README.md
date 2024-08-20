# Flutter Basic Sample App Documentation

## Overview

This is a basic Flutter sample app built using REST API and a mock API for data handling. The app demonstrates how to implement core features such as fetching data, displaying it, and managing state.

## Features

- **State Management**: Implemented using the `Provider` package.
- **API Integration**: Interacts with a mock REST API to fetch and display product data.
- **Authentication**: Simple user login using mock API credentials.
- **Error Handling**: Displays appropriate error messages when API requests fail.

## Folder Structure
```
lib/
|-- models/
| |-- product.dart
| |-- user.dart
|-- services/
| |-- api_service.dart
|-- providers/
| |-- product_provider.dart
| |-- auth_provider.dart
|-- screens/
| |-- login_screen.dart
| |-- product_list_screen.dart
|-- widgets/
| |-- product_tile.dart
|-- main.dart
```

## Dependencies

- `provider`
- `http`

## Getting Started

1. Clone the repository.
2. Install dependencies using `flutter pub get`.
3. Run the app using `flutter run`.

## API Usage

- **Login**: The app uses a POST request to authenticate users.
- **Product List**: Fetches a list of products using a GET request.

## Future Improvements

- Enhance error handling with custom exceptions.
- Implement persistent storage for offline access.
- Add unit and widget tests for critical components.
