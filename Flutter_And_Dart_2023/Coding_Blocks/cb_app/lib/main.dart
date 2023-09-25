import 'package:cb_app/sliver.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'nav.dart';
import 'appb.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        body: SliverAppBarHB(),
        bottomNavigationBar: BottomBar(),
      ),
    ),
  );
}
