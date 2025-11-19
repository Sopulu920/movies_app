import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
    this.fontSize = 16,
    this.textAlign = TextAlign.start,
  });

  final String text;
  final FontWeight fontWeight;
  final Color color;
  final double fontSize;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
