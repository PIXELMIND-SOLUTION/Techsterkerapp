import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  SharedPreferencesHelper._();

  static const String _keyToken = 'token';
  static const String _keyUserId = 'userId';
  static const String _keyMongoId = 'mongoId'; // _id  →  used for API calls

  static const String _keyName = 'name';
  static const String _keyEmail = 'email';
  static const String _keyPhone = 'phoneNumber';
  static const String _keyIsLoggedIn = 'isLoggedIn';

  // ── Save login data ──────────────────────────────────────────────
  static Future<void> saveLoginData({
    required String token,
    required String userId,
    required String mongoId,
    required String name,
    required String email,
    required String phoneNumber,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyToken, token);
    await prefs.setString(_keyUserId, userId);
    await prefs.setString(_keyMongoId, mongoId);

    await prefs.setString(_keyName, name);
    await prefs.setString(_keyEmail, email);
    await prefs.setString(_keyPhone, phoneNumber);
    await prefs.setBool(_keyIsLoggedIn, true);
  }

  // ── Getters ───────────────────────────────────────────────────────
  static Future<String?> getToken() async =>
      (await SharedPreferences.getInstance()).getString(_keyToken);
  static Future<String?> getUserId() async =>
      (await SharedPreferences.getInstance()).getString(_keyUserId);
  static Future<String?> getMongoId() async =>
      (await SharedPreferences.getInstance()).getString(_keyMongoId);
  static Future<String?> getName() async =>
      (await SharedPreferences.getInstance()).getString(_keyName);
  static Future<String?> getEmail() async =>
      (await SharedPreferences.getInstance()).getString(_keyEmail);
  static Future<String?> getPhone() async =>
      (await SharedPreferences.getInstance()).getString(_keyPhone);
  static Future<bool> isLoggedIn() async =>
      (await SharedPreferences.getInstance()).getBool(_keyIsLoggedIn) ?? false;

  // ── Clear on logout ───────────────────────────────────────────────
  static Future<void> clearAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
