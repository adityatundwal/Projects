import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//We are separating a app from main to a separate widget

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue.shade900,
          centerTitle: true,
          title: Text('Login Screen'),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz_sharp,
                  color: Colors.white,
                ))
          ],
        ),
        body: Row(
          children: <Widget>[
            Container(
              width: 100.0,
              color: Colors.red,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 100,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
//Safe area is used to hide the content from bezel or controls
//             //used for alignment
//             //
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: <Widget>[
//               Container(
//                 height: 100,
//                 width: 100,
// //used for both
// //margin: EdgeInsets.all(1),
// //used for vertical and horizontal alignment
// //margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
// //Used for 4 sides
// //margin: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),
// //used for specific side
//
// //margin is for outside
// // margin: EdgeInsets.only(left: 30.0),
// //Box inside a box
//
// //padding is for inside
// // padding: EdgeInsets.all(20.0),
//                 color: Colors.lightBlueAccent,
//                 child: Text('container1'),
//
// //a widget can only have one child
//
// //you can use column and rows for multi child widgets
//               ),
//               Container(
//                 width: 100.0,
//                 height: 100.0,
//                 color: Colors.blueGrey,
//                 child: Text('Container2'),
//               ),
//               Container(
//                 width: 100.0,
//                 height: 100.0,
//                 color: Colors.purple,
//                 child: Text('Container3'),
//               ),
//             ],
