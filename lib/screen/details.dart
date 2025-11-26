import 'package:flutter/material.dart';
import 'package:movies_app/components/styled_text.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: StyledText('Fuck off',color: Colors.red,),);
  }
}