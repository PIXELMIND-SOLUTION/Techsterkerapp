import 'package:flutter/material.dart';
import 'package:techstecker_app/helper/shared_preference.dart';
import 'package:techstecker_app/model/user_model.dart';
import 'package:techstecker_app/services/auth/login_service.dart';

enum AuthStatus { idle, loading, success, error }

class AuthProvider extends ChangeNotifier {
  final AuthService _authService = AuthService();

  AuthStatus _status    = AuthStatus.idle;
  UserModel? _user;
  String     _errorMsg  = '';

  // ── Getters ───────────────────────────────────────────────────────
  AuthStatus get status   => _status;
  UserModel? get user     => _user;
  String     get errorMsg => _errorMsg;
  bool       get isLoading => _status == AuthStatus.loading;

  // ── Login ─────────────────────────────────────────────────────────
  Future<bool> login({
    required String userId,
    required String generatedPassword,
  }) async {
    _status   = AuthStatus.loading;
    _errorMsg = '';
    notifyListeners();

    final result = await _authService.login(
      userId:            userId,
      generatedPassword: generatedPassword,
    );

    if (result.success && result.data != null) {
      _user   = result.data;
      _status = AuthStatus.success;

      // Persist session
      await SharedPreferencesHelper.saveLoginData(
        token:       _user!.token,
        userId:      _user!.userId,
        name:        _user!.name,
        email:       _user!.email,
        phoneNumber: _user!.phoneNumber,
        mongoId: _user!.id
      );

      notifyListeners();
      return true;
    } else {
      _status   = AuthStatus.error;
      _errorMsg = result.message;
      notifyListeners();
      return false;
    }
  }

  // ── Logout ────────────────────────────────────────────────────────
  Future<void> logout() async {
    await SharedPreferencesHelper.clearAll();
    _user     = null;
    _status   = AuthStatus.idle;
    _errorMsg = '';
    notifyListeners();
  }
}