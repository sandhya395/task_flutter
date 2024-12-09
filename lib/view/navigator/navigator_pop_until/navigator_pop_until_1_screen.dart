import 'package:flutter/material.dart';

import 'navigator_pop_until_2_screen.dart';

class NavigatorPopUntil1Screen extends StatelessWidget {
  const NavigatorPopUntil1Screen({Key? key}) : super(key: key);

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
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => NavigatorPopUntil2Screen()));

          },
          child: Container(
            height: 50,
            width: 140,
            child: Center(child: Text("2.Second screen",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
            decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
