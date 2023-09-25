import 'dart:ui';

import 'package:diceappself/Textstile.dart';
import 'package:diceappself/diceroller.dart';
import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  BackgroundContainer(this.color1, this.color2, this.color3, {super.key});

  final Color color1;
  final Color color2;
  final Color color3;

  var StartAlignment = Alignment.topLeft;
  var EndAlignment = Alignment.bottomRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: StartAlignment,
          end: EndAlignment,
        ),
      ),
      child: Center(
        child: rollerdice(),
      ),
    );
  }
}
