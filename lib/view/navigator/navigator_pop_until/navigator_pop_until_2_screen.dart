import 'package:flutter/material.dart';

import 'navigator_pop_until_3_screen.dart';

class NavigatorPopUntil2Screen extends StatelessWidget {
  const NavigatorPopUntil2Screen({Key? key}) : super(key: key);

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
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => NavigatorPopUntil3Screen()));

          },
          child: Container(
            height: 50,
            width: 140,
            child: Center(child: Text("3.Third screen",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
            decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
