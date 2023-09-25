import 'package:flutter/material.dart';

import 'HomePage.dart';

class AppDr extends StatefulWidget {
  const AppDr({super.key});

  @override
  State<AppDr> createState() => _AppDrState();
}

class _AppDrState extends State<AppDr> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BOx,
        child: ListView(
          children: [
            DrawerHeader(
              child: Card(
                child: Image.asset(
                  'Assets/images/nb.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
