import 'package:flutter/material.dart';

class NavigatorOff2Screen extends StatelessWidget {
  const NavigatorOff2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator off example"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 140,
          child: Center(child: Text("3.Third screen",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
          decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
