import 'package:flutter/material.dart';
import 'package:payapp/homepage.dart';

class RDBCAppDr extends StatefulWidget {
  const RDBCAppDr({super.key});

  @override
  State<RDBCAppDr> createState() => _RDBCAppDrState();
}

class _RDBCAppDrState extends State<RDBCAppDr> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BOx,
        child: ListView(),
      ),
    );
  }
}
