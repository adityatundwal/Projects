import 'package:flutter/material.dart';

import 'dart:math';

class rollerdice extends StatefulWidget {
  const rollerdice({super.key});

  @override
  State<rollerdice> createState() => _rollerdiceState();
}

class _rollerdiceState extends State<rollerdice> {
  var current = 1;
  final randomizer = Random();

  void rolltdice() {
    setState(() {
      current = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'Assets/images/dice-$current.png',
          width: 200,
        ),
        SizedBox(
          height: 20,
          width: 10,
        ),
        ElevatedButton(
            onPressed: rolltdice,
            style: TextButton.styleFrom(padding: EdgeInsets.all(20)),
            child: const Text(' Roll It Up'))
      ],
    );
  }
}










//// import 'package:flutter/material.dart';
// import 'package:flutter_cube/flutter_cube.dart';
 
//// class Earth extends StatefulWidget {
//   const Earth({super.key});

////   @override
//   State<Earth> createState() {
//     return _EarthState();
//   }
// }

//// class _EarthState extends State<Earth> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Cube(
//           onSceneCreated: (Scene scene) {
//             scene.world.add(
//               Object(fileName: 'Assets/3D/Earth_1_12756.glb'),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
      
//// //         const SizedBox(
// //           height: 20,
// //           width: 10,
// //         ),
// //         ElevatedButton(
// //           onPressed: () {},
// //           style: TextButton.styleFrom(
// //             padding: EdgeInsets.all(20),
// //             backgroundColor: Colors.indigo.shade900,
// //             foregroundColor: Colors.white,
// //             textStyle: const TextStyle(fontSize: 30, fontFamily: 'Pacifico'),
// //           ),
// //           child: const Text('Earth'),
// //         ),
// //       ],
// //     );
// //   }
// // }



// // @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(
// //       child: Cube(
// //         onSceneCreated: (Scene scene) {
// //           scene.world.add(
// //             Object(fileName: 'Assets/3D/Earth_1_12756.glb'),
// //           );
// //         },
// //       ),
// //     ));