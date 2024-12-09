import 'package:flutter/material.dart';

import 'navigator_pop_and_push_named_1_screen.dart';
import 'navigator_pop_and_push_named_2_screen.dart';

class NavigatorPopAndPushNamedScreen extends StatelessWidget {
  const NavigatorPopAndPushNamedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator pop and push named example"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => NavigatorPopAndPushNamed1Screen()));

            // Navigator.popAndPushNamed(context,NavigatorPopAndPushNamed2Screen() as String );
          },
          child: Container(
            height: 50,
            width: 140,
            child: Center(child: Text("1.First screen",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
            decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
