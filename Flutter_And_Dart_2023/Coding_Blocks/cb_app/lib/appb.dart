import 'package:flutter/material.dart';

class MyAppBAr extends StatelessWidget implements PreferredSize {
  const MyAppBAr({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.amber.shade800,
      title: const Text(
        'Hacker Blocks',
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.maxFinite, 50);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
