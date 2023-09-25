import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.indigo.shade900,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Image.asset('images/dice1.png'),
        ),
        Expanded(
          flex: 1,
          child: Image.asset('images/dice2.png'),
        )
      ],
    );
  }
}
