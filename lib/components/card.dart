import 'package:flutter/material.dart';
import 'package:movies_app/components/styled_text.dart';

class MovieCard extends StatelessWidget {
  const MovieCard(
    this.name,
    this.rating,
    this.releaseDate,
    this.image, {
    super.key,
  });
  final String name;
  final String rating;
  final String releaseDate;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      width: 170,
      height: 300,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFAAA4A4),
            blurRadius: 4,
            spreadRadius: 2,
            offset: Offset(2, 2),
          ),
        ],
      ),
      // height: 200,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'lib/assets/images/vegf (11).jpg',
              fit: BoxFit.cover,
            ),
          ),
          StyledText('Name:',fontSize: 12,),
          StyledText(name),
          StyledText('Ratings:',fontSize: 12,),
          StyledText(rating),
          StyledText('Release Date:',fontSize: 12,),
          StyledText(releaseDate),
        ],
      ),
    );
  }
}
