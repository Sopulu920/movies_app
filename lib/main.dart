import 'package:flutter/material.dart';
import 'package:movies_app/components/styled_text.dart';
import 'package:movies_app/screen/home.dart';

void main() {
  runApp(MaterialApp(home: MoviesApp()));
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyledText("Movie List"), backgroundColor: Colors.blueAccent),
      body: HomeScreen(),
    );
  }
}
