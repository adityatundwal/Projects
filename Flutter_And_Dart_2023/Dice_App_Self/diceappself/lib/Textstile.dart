import 'package:flutter/material.dart';

class TextStile extends StatelessWidget {
  const TextStile(this.line, {super.key});

  final String line;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        line,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'Pacifico',
        ),
      ),
    );
  }
}
