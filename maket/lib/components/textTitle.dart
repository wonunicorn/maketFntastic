import 'package:flutter/material.dart';

class TextTitleStyle extends StatelessWidget {
  TextTitleStyle(@required this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(
          color: Colors.grey[400],
          fontSize: 16,
        ),
      ),
    );
  }
}
