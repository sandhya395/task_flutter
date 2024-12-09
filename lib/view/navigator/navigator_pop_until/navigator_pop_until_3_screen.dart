import 'package:flutter/material.dart';

import 'navigator_pop_until_screen.dart';

class NavigatorPopUntil3Screen extends StatelessWidget {
  const NavigatorPopUntil3Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator pop until example"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => NavigatorPopUntilScreen()));
          },
          child: Container(
            height: 50,
            width: 140,
            child: Center(child: Text("4.Forth screen",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
            decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
