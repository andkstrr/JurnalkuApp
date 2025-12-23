import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/login_response.dart';

class AuthService {
  static String? accessToken;
  static String? refreshToken;
  static const String baseUrl = 'http://localhost:8000/api';

  static Future<LoginResponse> login({
    required String email,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final loginResponse = LoginResponse.fromJson(data);

      saveToken(
        access: loginResponse.access,
        refresh: loginResponse.refresh,
      );

      return loginResponse;
    } else {
      throw Exception('Login gagal');
    }
  }

  static void saveToken({
    required String access,
    required String refresh,
  }) {
    accessToken = access;
    refreshToken = refresh;
  }

  static void logout() {
    accessToken = null;
    refreshToken = null;
  }
}
