import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jurnalku_app/models/student_model.dart';

class ListStudentService {
  static const String baseUrl = 'http://localhost:8000/api';

  static Future<List<StudentModel>> fetchStudents() async {
    final response = await http.get(
      Uri.parse('$baseUrl/students/'),
      // headers: {
      //   'ngrok-skip-browser-warning': 'true'
      // }
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> body = json.decode(response.body);

      final List<dynamic> data = body['results'];

      return data.map((json) => StudentModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch students');
    }
  }
}
