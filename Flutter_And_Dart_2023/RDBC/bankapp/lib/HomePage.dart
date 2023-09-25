import 'package:bankapp/AppDrawer.dart';
import 'package:bankapp/Carousel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDr(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar.large(
            pinned: true,
            floating: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('RDBC Bank'),
              background: Container(
                decoration: BOx,
                child: Image.asset(
                  'Assets/images/nb.png',
                  fit: BoxFit.cover,
                ),
              ),
              // title: const Text(
              //   """Welcome To, \n RDBC Bank""",
              //   style: TextStyle(fontSize: 20),
              //   textAlign: TextAlign.start,
              // ),
            ),
          ),
        ],
      ),
    );
  }
}

class MYCARD extends StatefulWidget {
  const MYCARD({super.key});

  @override
  State<MYCARD> createState() => _MYCARDState();
}

class _MYCARDState extends State<MYCARD> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 100,
      padding: EdgeInsets.only(top: 10),
      child: Card(
        color: Colors.purple.shade100,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Image.asset('Assets/images/nb.png'),
      ),
    );
  }
}

final BOx = BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: <Color>[
        Color(0xff11034A6),
        Colors.blue.shade700,
        Colors.red.shade600,
        Color(0xff5f9530b),
      ],
      tileMode: TileMode.decal),
);
