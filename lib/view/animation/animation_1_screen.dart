import 'package:flutter/material.dart';

import 'animation_screen.dart';
import 'hero_animation.dart';

class Animation1Screen extends StatefulWidget {
  const Animation1Screen({Key? key}) : super(key: key);

  @override
  State<Animation1Screen> createState() => _Animation1ScreenState();
}

class _Animation1ScreenState extends State<Animation1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AnimationScreen(),
                      ));
                },
                child: Container(
                  height: 50,
                  width: 130,
                  color: Colors.grey,
                  child: Center(child: Text("1",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 30),)),
                ),
              ),
              SizedBox(width: 40,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HeroAnimation(),
                      ));
                },
                child: Container(
                  height: 50,
                  width: 130,
                  color: Colors.grey,
                  child: Center(child: Text("2",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 30),)),
                ),
              ),
            ],
          ),
          // SizedBox(height: 30,),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(
          //       height: 50,
          //       width: 90,
          //       color: Colors.grey,
          //       child: Center(child: Text("3")),
          //
          //     ),
          //     SizedBox(width: 40,),
          //     Container(
          //       height: 50,
          //       width: 90,
          //       color: Colors.grey,
          //       child: Center(child: Text("4")),
          //     ),
          //   ],
          // ),
          // SizedBox(height: 30),
          // Container(
          //   height: 50,
          //   width: 90,
          //   color: Colors.grey,
          //   child: Center(child: Text("5")),
          // ),
        ],
      ),
    );
  }
}
