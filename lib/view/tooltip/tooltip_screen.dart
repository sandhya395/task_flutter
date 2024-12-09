import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TooltipScreen extends StatelessWidget {
  const TooltipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text(
          "Progress Bar",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(12),
          child: Tooltip(
            waitDuration: Duration(seconds: 1),
            showDuration: Duration(seconds: 2),
            padding: EdgeInsets.all(5),
            height: 35,
            preferBelow: false,
            textStyle: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.normal),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black),
            message: 'Password must contain at least 1 upercase letter,1 lowercase letter a special charcter and minimum 8 charcters.',
            child: Row(
              children: [
                Text(
                  "Passwowd : ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 30,
                  width: 200,
                  child: Text("|             "),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 80,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                    ),
                    child: Icon(Icons.question_mark)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
