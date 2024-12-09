import 'package:flutter/material.dart';
class CheckBoxScreen extends StatefulWidget {
  const CheckBoxScreen({Key? key}) : super(key: key);

  @override
  State<CheckBoxScreen> createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
  @override
  bool valuefirst = true;
  bool valuesecond = false;
  bool valuethird = true;
  bool valueforth = false;
  bool valuefifth = false;
  bool valuesixth = false;
  bool valueseventh = false;
  bool valueeighth = true;



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Checkbox Example",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          CheckboxListTile(
            checkColor: Colors.greenAccent,
            activeColor: Colors.red,
            secondary: Icon(Icons.arrow_forward),
            title: Text("Wake up at the same time every morning.",style: TextStyle(decoration: valuefirst==true? TextDecoration.underline:TextDecoration.none),),
            value: this.valuefirst,
            onChanged: (bool? value) {
              setState(() {
                this.valuefirst = value!;
              });
            },
          ),
          CheckboxListTile(
            checkColor: Colors.greenAccent,
            activeColor: Colors.red,
            secondary: Icon(Icons.arrow_forward),
            title: Text("Journal for 15 minutes about personal or professional goals.",style: TextStyle(decoration: valuesecond==true? TextDecoration.underline:TextDecoration.none),),
            value: this.valuesecond,
            onChanged: (bool? value) {
              setState(() {
                this.valuesecond = value!;
              });
            },
          ),
          CheckboxListTile(
            checkColor: Colors.greenAccent,
            activeColor: Colors.red,
            secondary: Icon(Icons.arrow_forward),
            title: Text("Eat breakfast and get ready for work.",style: TextStyle(decoration: valuethird==true? TextDecoration.underline:TextDecoration.none),),
            value: this.valuethird,
            onChanged: (bool? value) {
              setState(() {
                this.valuethird = value!;
              });
            },
          ),
          CheckboxListTile(
            checkColor: Colors.greenAccent,
            activeColor: Colors.red,
            secondary: Icon(Icons.arrow_forward),
            title: Text("Commute to work, if applicable.",style: TextStyle(decoration: valueforth==true? TextDecoration.underline:TextDecoration.none),),
            value: this.valueforth,
            onChanged: (bool? value) {
              setState(() {
                this.valueforth = value!;
              });
            },
          ),
          CheckboxListTile(
            checkColor: Colors.greenAccent,
            activeColor: Colors.red,
            secondary: Icon(Icons.arrow_forward),
            title: Text("Read and respond to emails.",style: TextStyle(decoration: valuefifth==true? TextDecoration.underline:TextDecoration.none),),
            value: this.valuefifth,
            onChanged: (bool? value) {
              setState(() {
                this.valuefifth = value!;
              });
            },
          ),
          CheckboxListTile(
            checkColor: Colors.greenAccent,
            activeColor: Colors.red,
            secondary: Icon(Icons.arrow_forward),
            title: Text("Create a list of tasks for the day.",style: TextStyle(decoration: valuesixth==true? TextDecoration.underline:TextDecoration.none),),
            value: this.valuesixth,
            onChanged: (bool? value) {
              setState(() {
                this.valuesixth = value!;
              });
            },
          ),
          CheckboxListTile(
            checkColor: Colors.greenAccent,
            activeColor: Colors.red,
            secondary: Icon(Icons.arrow_forward),
            title: Text("Work on tasks.",style: TextStyle(decoration: valueseventh==true? TextDecoration.underline:TextDecoration.none),),
            value: this.valueseventh,
            onChanged: (bool? value) {
              setState(() {
                this.valueseventh = value!;
              });
            },
          ),
          CheckboxListTile(
            checkColor: Colors.greenAccent,
            activeColor: Colors.red,
            secondary: Icon(Icons.arrow_forward),
            title: Text("Take lunch.",style: TextStyle(decoration: valueeighth==true? TextDecoration.underline:TextDecoration.none),),
            value: this.valueeighth,
            onChanged: (bool? value) {
              setState(() {
                this.valueeighth = value!;
              });
            },
          ),
        ],
      ),
      // Center(
      //   child: Checkbox(
      //     checkColor: Colors.greenAccent,
      //     activeColor: Colors.red,
      //     value: this.valuefirst,
      //     onChanged: (bool? value) {
      //       setState(() {
      //         this.valuefirst = value!;
      //       });
      //     },
      //   ),
      // ),
    );
  }
}
