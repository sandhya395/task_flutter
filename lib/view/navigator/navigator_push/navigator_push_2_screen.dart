import 'package:flutter/material.dart';

import 'navigator_push_screen.dart';

class NavigatorPush2Screen extends StatelessWidget {
  const NavigatorPush2Screen({Key? key}) : super(key: key);

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
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => NavigatorPushScreen()));
            // Navigator.pop      (context);
          },
          child: Container(
            height: 50,
            width: 140,
            child: Center(child: Text("3.Third screen",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
            decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
