import 'package:flutter/material.dart';

class NavigatorPopAndPushNamed2Screen extends StatelessWidget {
  const NavigatorPopAndPushNamed2Screen({Key? key}) : super(key: key);

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
             Navigator.popAndPushNamed(context,NavigatorPopAndPushNamed2Screen() as String );

          },
          child: Container(
            height: 50,
            width: 140,
            child: Center(child: Text("3.Third screen",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
            decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
