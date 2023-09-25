import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.directions_bike,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.black,
            actions: <Widget>[
              IconButton(
                alignment: Alignment.centerRight,
                onPressed: () {},
                icon: Icon(
                  Icons.start_outlined,
                  color: Colors.white,
                ),
              ),
            ],
            centerTitle: true,
            title: Text('Biking App')),
      ),
    ),
  );
}
