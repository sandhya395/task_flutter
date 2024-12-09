import 'package:flutter/material.dart';

class NavigatorPopScreen extends StatelessWidget {
  const NavigatorPopScreen({Key? key}) : super(key: key);

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
            child: Center(child: Text("1.First screen",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
            decoration: BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
