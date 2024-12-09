import 'package:flutter/material.dart';

import 'navigator_push_1_screen.dart';

class NavigatorPushScreen extends StatelessWidget {
  const NavigatorPushScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator push example"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => NavigatorPush1Screen()));
// Navigator.pop      (context);
},
          child: Container(
            height: 50,
            width: 140,
            child: Center(child: Text("1.First screen",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
            decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
