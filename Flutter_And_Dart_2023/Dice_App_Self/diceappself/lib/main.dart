import 'package:diceappself/BackGround.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Container(
      child: Scaffold(
        body: BackgroundContainer(
            Colors.blue.shade900, Colors.indigo, Colors.blueAccent),
      ),
    ),
  ));
}
