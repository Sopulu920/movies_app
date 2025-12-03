import 'package:flutter/material.dart';
import 'package:movies_app/components/styled_text.dart';
import 'package:movies_app/screen/details.dart';
import 'package:movies_app/screen/home.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MoviesApp(),
        '/details': (context) => DetailsScreen(),
      },
    ),
  );
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledText("Movie List"),
        backgroundColor: Colors.blueAccent,
      ),
      body: HomeScreen(),
    );
  }
}

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailsScreen();
  }
}
