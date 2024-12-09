import 'package:flutter/material.dart';

import 'navigator_push_remove_and_until_1_screen.dart';

class NavigatorPushRemoveAndUntilScreen extends StatelessWidget {
  const NavigatorPushRemoveAndUntilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator push  remove and until example"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => NavigatorPushRemoveAndUntil1Screen()));

          },
          child: Container(
            height: 50,
            width: 140,
            child: Center(child: Text("1.First screen",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
            decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
