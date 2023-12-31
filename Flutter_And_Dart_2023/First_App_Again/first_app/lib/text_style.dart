import 'package:flutter/material.dart';

class TextContainerStyle extends StatelessWidget {
  const TextContainerStyle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 28),
      ),
    );
  }
}
