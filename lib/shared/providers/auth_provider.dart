import 'package:flutter/material.dart';
import 'package:walletiq/shared/models/user_model.dart';

enum AuthStatus {
  initial,
  loading,
  authenticated,
  unauthenticated,
  error,
}

class AuthProvider extends ChangeNotifier {
  AuthStatus _status = AuthStatus.initial;
  UserModel? _currentUser;
  String? _errorMessage;
  String? _authToken;

  AuthStatus get status => _status;
  UserModel? get currentUser => _currentUser;
  String? get errorMessage => _errorMessage;
  String? get authToken => _authToken;

  bool get isAuthenticated => _status == AuthStatus.authenticated;
  bool get isLoading => _status == AuthStatus.loading;
  bool get isError => _status == AuthStatus.error;
  bool get isInitial => _status == AuthStatus.initial;
  bool get isUnauthenticated => _status == AuthStatus.unauthenticated;

  void setLoading() {
    _status = AuthStatus.loading;
    _errorMessage = null;
    notifyListeners();
  }

  void setAuthenticated(UserModel user, {String? token}) {
    _status = AuthStatus.authenticated;
    _currentUser = user;
    _authToken = token;
    _errorMessage = null;
    notifyListeners();
  }

  void setUnauthenticated() {
    _status = AuthStatus.unauthenticated;
    _currentUser = null;
    _authToken = null;
    _errorMessage = null;
    notifyListeners();
  }

  void setError(String message) {
    _status = AuthStatus.error;
    _errorMessage = message;
    notifyListeners();
  }

  void clearError() {
    _errorMessage = null;
    notifyListeners();
  }

  void logout() {
    _status = AuthStatus.unauthenticated;
    _currentUser = null;
    _authToken = null;
    _errorMessage = null;
    notifyListeners();
  }

  void updateUser(UserModel user) {
    _currentUser = user;
    notifyListeners();
  }
}
