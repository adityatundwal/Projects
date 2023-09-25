import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple.shade50,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple.shade700,
          title: Text('Images app'),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/1313646.jpeg'),
          ),
        ),
      ),
    ),
  );
}
