import 'package:flutter/material.dart';

class NavigatorPop2Screen extends StatelessWidget {
  const NavigatorPop2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator pop example"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.pop      (context);

          },
          child: Container(
            height: 50,
            width: 140,
            child: Center(child: Text("3.Third screen",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
            decoration: BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
