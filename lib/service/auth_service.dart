import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  final String _baseUrl = 'https://fakestoreapi.com/auth/login';

  /// Logs in the user with the provided [username] and [password].
  ///
  /// Returns a [Future] that resolves to the authentication token if successful.
  /// Throws an [Exception] if the login fails.
  Future<String> login(String username, String password) async {
    final response = await http.post(
      Uri.parse(_baseUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'username': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      return responseData['token'];
    } else {
      throw Exception('Failed to authenticate');
    }
  }
}
