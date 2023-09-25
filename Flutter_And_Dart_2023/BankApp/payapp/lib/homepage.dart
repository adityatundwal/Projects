import 'package:flutter/material.dart';
import 'package:payapp/appdrawer.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: appBar(),
      drawer: RDBCAppDr(),
      body: const Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Accounts',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
          )
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      flexibleSpace: Container(
        decoration: BOx,
      ),
      leading: IconButton(
        icon: Icon(
          Icons.account_circle,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      title: Text(
        'RDBC Bank',
        style: GoogleFonts.poppins(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic),
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text(
            'Support',
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
        ),
      ],
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
