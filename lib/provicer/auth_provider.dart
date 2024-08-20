import 'package:flutter/material.dart';
import '../service/auth_service.dart';

class AuthProvider with ChangeNotifier {
  final AuthService _authService = AuthService();
  String? _token;
  String? _username;
  bool _isLoading = false;

  bool get isAuthenticated => _token != null;
  bool get isLoading => _isLoading;

  /// Logs in the user with the provided [username] and [password].
  ///
  /// Updates the loading state and notifies listeners of changes.
  Future<void> login(String username, String password) async {
    _isLoading = true;
    notifyListeners();

    try {
      _token = await _authService.login(username, password);
      _username = username;
    } catch (error) {
      rethrow;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Logs out the current user.
  ///
  /// Clears the token and username, then notifies listeners of changes.
  void logout() {
    _token = null;
    _username = null;
    notifyListeners();
  }
}
