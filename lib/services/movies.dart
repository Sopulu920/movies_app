import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

void getMovie() async {
  final String baseUrl = dotenv.env['TMDB_API_URL']!;
  final String apiKey = dotenv.env['TMDB_API_KEY']!;

  final uri = Uri.https(
    baseUrl,
    'movie/popular',
    {
      'api_key': apiKey,
      'language': 'en-US',
      'page': '1',
    },
  );

  final response = await http.get(uri);

  if (response.statusCode == 200) {
    print("Success!");
    print(response.body);
  } else {
    print("Failed: ${response.statusCode}");
    print(response.body);
  }
}
