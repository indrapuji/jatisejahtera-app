import 'dart:convert';

import 'package:http/http.dart' as http;

class UserService {
  final _baseUrl = 'https://jati.pasangbajaringan.id';
  final _baseEksis = 'https://ws.ykp3js.org/cek';

  Future userLogin(String username, String password) async {
    try {
      final response = await http.post(Uri.parse('$_baseUrl/user/login'),
          body: jsonEncode(
            {"username": username, "password": password},
          ));
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future userCheck(String dataNIP) async {
    try {
      final response = await http.post(Uri.parse(_baseEksis),
          body: jsonEncode({
            'nip': dataNIP,
            'tokenkey':
                'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyaWQiOiJZS1AzSlNXZWIiLCJ0aW1lc3RhbXAiOjE2NjIyNzM1MDB9.7W1lr29HTvAQDYR1FUIRG3mrsyGqTVAbQe9daDeUz8k',
            'act': 'klaim'
          }));
      // if (response.statusCode == 200) {
      //   return true;
      // } else {
      //   return false;
      // }
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
