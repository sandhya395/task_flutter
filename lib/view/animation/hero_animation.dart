import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_task_design/view/animation/hero_animation_2_screen.dart';

class HeroAnimation extends StatefulWidget {
  const HeroAnimation({Key? key}) : super(key: key);

  @override
  State<HeroAnimation> createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ListTile(
              leading: GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, '/second');
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HeroAnimation2Screen(),
                      ));
                },
                child: Hero(
                  tag: 'hero-rectangle',
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(color: Colors.green),
                  ),
                ),
              ),
              title: Text(
                  'Tap on the green icon rectangle to analyse hero animation transition.'),
            ),
          )
        ],
      ),
    );
  }
}
