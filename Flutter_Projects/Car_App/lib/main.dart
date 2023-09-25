import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
          ),
          title: Text(
            'Hyundai i10',
            style: TextStyle(fontFamily: 'Open_Sans'),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {}, icon: Icon(Icons.directions_car_outlined))
          ],
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     (IconButton(onPressed: () {}, icon: Icon(Icons.account_box)),
        //     IconButton(onPressed: (){}, icon: Icon(Icons.account_box)),
        //     )],
        // );
      ),
    );
  }
}
