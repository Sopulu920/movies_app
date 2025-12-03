// import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

final String url = dotenv.env['TMDB_API_URL']!;
final String apiKey = dotenv.env['TMDB_API_KEY']!;

void getMovie() async {
  var baseUrl = Uri.https(
    url,
    'movie/popular',
    {apiKey} as Map<String, dynamic>?,
  );

  var response = await http.get(baseUrl);
  if (response.statusCode == 200) {
    print('finally');
  }
}
