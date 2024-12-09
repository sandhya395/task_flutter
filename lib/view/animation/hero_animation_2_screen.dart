import 'package:flutter/material.dart';
class HeroAnimation2Screen extends StatefulWidget {
  const HeroAnimation2Screen({Key? key}) : super(key: key);

  @override
  State<HeroAnimation2Screen> createState() => _HeroAnimation2ScreenState();
}

class _HeroAnimation2ScreenState extends State<HeroAnimation2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: GestureDetector(
          onTap: () {

          },
          child: Hero(
            tag: 'hero-rectangle',
            child: Container(
              height: 150,width: 150,color: Colors.red,
            ),
          ),
        ),
      )
    );
  }
}
