import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'accountcarousel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Accounts  ',
            style:
                GoogleFonts.sansita(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            child: AccountCarousel(),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(20)),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.transparent,
                child: Image.asset('assets/icons/upload.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
          Text(
            'Welcome, ',
            style: GoogleFonts.sansita(color: Colors.black),
          ),
          Text(
            'User!',
            style: GoogleFonts.sansita(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.account_circle_sharp,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
