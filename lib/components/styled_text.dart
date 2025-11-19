import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
    this.fontSize = 16,
  });

  final String text;
  final FontWeight fontWeight;
  final Color color;
  final double fontSize;

  

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
