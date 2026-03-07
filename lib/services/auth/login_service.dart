import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:techstecker_app/constant/api_constant.dart';
import 'package:techstecker_app/model/user_model.dart';


class AuthService {
  // ── Login ─────────────────────────────────────────────────────────
  Future<LoginResponse> login({
    required String userId,
    required String generatedPassword,
  }) async {
    try {
      final response = await http.post(
        Uri.parse(ApiConstants.userLogin),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'userId':            userId,
          'generatedPassword': generatedPassword,
        }),
      );

      final Map<String, dynamic> jsonBody = jsonDecode(response.body);

      print('Response status code for login ${response.statusCode}');
            print('Response bodyyyyyyyyyyyyyy code for login ${response.body}');


      if (response.statusCode == 200) {
        return LoginResponse.fromJson(jsonBody);
      } else {
        return LoginResponse(
          success: false,
          message: jsonBody['message'] ?? 'Login failed. Please try again.',
        );
      }
    } catch (e) {
      return LoginResponse(
        success: false,
        message: 'Network error: ${e.toString()}',
      );
    }
  }
}