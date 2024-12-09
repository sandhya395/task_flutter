import 'package:flutter/material.dart';

class NavigatorPushRemoveAndUntil2Screen extends StatelessWidget {
  const NavigatorPushRemoveAndUntil2Screen({Key? key}) : super(key: key);

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
          // Navigator.pushAndRemoveUntil(context, newRoute, predicate)
          },
          child: Container(
            height: 50,
            width: 140,
            child: Center(child: Text("3.Third screen",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
            decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
