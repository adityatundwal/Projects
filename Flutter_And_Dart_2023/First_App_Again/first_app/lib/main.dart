import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        child: Scaffold(
          body: GradientContainer(Colors.deepPurple, Colors.indigo, Colors.red),
        ),
      ),
    ),
  );
}
