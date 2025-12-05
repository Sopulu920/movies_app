import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<List<dynamic>> getMovie() async {
  // print('API CALL ATTEMPT');
  final String baseUrl = dotenv.env['TMDB_API_URL']!;
  final String apiKey = dotenv.env['TMDB_API_KEY']!;
  // print('API CALL ATTEMPT 2');

  // print('API CALL ATTEMPT 3');

  try {
    // print('API CALL ATTEMPT 4');

    var response = await http.get(
      Uri.parse('$baseUrl/movie/popular?api_key=$apiKey'),
    );

    if (response.statusCode == 200) {
      print("Success!");
      // print(response.body);
      final data = jsonDecode(response.body);
      final result = data['results'];
      print('RESULT: $result');
      return result;
    } else {
      print("Failed: ${response.statusCode}");
      print(response.body);
      return [];
    }
  } catch (e) {
    print('failed: $e');
    return [];
  }
}
