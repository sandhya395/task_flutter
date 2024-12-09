import 'package:flutter/material.dart';

import 'navigator_pop_and_push_named_2_screen.dart';

class NavigatorPopAndPushNamed1Screen extends StatelessWidget {
  const NavigatorPopAndPushNamed1Screen({Key? key}) : super(key: key);

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
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => NavigatorPopAndPushNamed2Screen()));

          },
          child: Container(
            height: 50,
            width: 140,
            child: Center(child: Text("2.second screen",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
            decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
