import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/text_style.dart';

//these are variables in dart

//Dynamic can be updated later on
var centerAligment;

//Static
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

//final variables will never receive a new value restrictive

const var1 = 0;
const var2 = 2;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.color3, {super.key});
  //another way
  //
  //initialization work
  //const  GradientContainer({super.key})
  //GradientContainer({key}) : super(key: key)

  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        //this gets ignored as column takes all the verticle space in the screen
        child: DiceRoller(),

        //child: TextContainerStyle('Hello from function'),
      ),
    );
  }
}



// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.colors, {super.key});
//   //another way
//   //
//   //initialization work
//   //const  GradientContainer({super.key})
//   //GradientContainer({key}) : super(key: key)

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const TextContainerStyle('Hello Again'),
//     );
//   }
// }
