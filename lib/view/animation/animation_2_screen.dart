// import 'package:flutter/material.dart';
//
// class Animation2Screen extends StatefulWidget {
//   const Animation2Screen({Key? key}) : super(key: key);
//
//   @override
//   State<Animation2Screen> createState() => _Animation2ScreenState();
// }
//
// class Animation2ScreenState extends State<Animation2Screen> {
//   bool _isPressed = false;
//
//   void _togglePressed() {
//     setState(() {
//       // _isPressed = !_isPressed;
//     });
//   }
//
// class _Animation2ScreenState extends State<Animation2Screen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Color and Position Change'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             AnimatedContainer(
//               duration: const Duration(seconds: 1),
//               height: 200.0,
//               width: 200.0,
//               margin: EdgeInsets.only(
//                 top: _isPressed ? 70.0 : 0.0,
//               ),
//               decoration: BoxDecoration(
//                 color: _isPressed ? Colors.blue : Colors.red,
//                 borderRadius: BorderRadius.circular(_isPressed ? 50.0 : 0.0),
//               ),
//             ),
//             const SizedBox(height: 20.0),
//             ElevatedButton(
//               onPressed: _togglePressed,
//               child: const Text('ANIMATE'),
//             ),
//           ],
//         ),
//       ),
//     ),
//     );
//   }
// }
