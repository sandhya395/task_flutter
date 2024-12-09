import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({Key? key}) : super(key: key);

  @override
  State<RadioButtonScreen> createState() => _RadioButtonScreenState();
}

enum BestTutorSite { javatpoint, w3schools, tutorialandexample, age }

class _RadioButtonScreenState extends State<RadioButtonScreen> {
  String selectedSnack = "None selected";

  @override
  BestTutorSite _site = BestTutorSite.javatpoint;

  get selectedValue => null;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Radio button Example"),
      ),

      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: const Text('Mango'),
            leading: Radio(
              value: "Mango",

              groupValue: selectedSnack,
              onChanged: (selectedValue) {
                setState(() {
                  selectedSnack = selectedValue!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text("Banana"),
            leading: Radio(
              value: "Banana",
              groupValue: selectedSnack,
              onChanged: (selectedValue) {
                setState(() {
                  selectedSnack = selectedValue!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Apple'),
            leading: Radio(
              value: "Apple",
              groupValue: selectedSnack ,
              onChanged: (selectedValue) {
                setState(() {
                  selectedSnack = selectedValue!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Papaya'),
            leading: Radio(
              value: "Papaya",
              groupValue: selectedSnack,
              onChanged: (selectedValue) {
                setState(() {
                  selectedSnack = selectedValue!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Pineapple'),
            leading: Radio(
              value: "Pineapple",
              groupValue: selectedSnack,
              onChanged: (selectedValue) {
                setState(() {
                  selectedSnack = selectedValue!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Grapes'),
            leading: Radio(
              value: "Grapes",
              groupValue: selectedSnack,
              onChanged: (selectedValue) {
                setState(() {
                  selectedSnack = selectedValue!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Guava'),
            leading: Radio(
              value: "Guava",
              groupValue: selectedSnack,
              onChanged: (selectedValue) {
                setState(() {
                  selectedSnack = selectedValue!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Orange'),
            leading: Radio(
              value: "Orange",
              groupValue: selectedSnack,
              onChanged: (selectedValue) {
                setState(() {
                  selectedSnack = selectedValue!;
                });
              },
            ),
          ),
          SizedBox(height: 50,),
          Container(
            height: 40,
            width: 220,
            color: Colors.grey,
            child: Center(child: Text("selectedSnack: $selectedSnack",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),)
          )
        ],
      ),
    );
  }
}
