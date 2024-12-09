import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({Key? key}) : super(key: key);

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

bool switchValue = true;

class _SwitchScreenState extends State<SwitchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Progress Bar",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Turn On Flash light",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontStyle: FontStyle.italic),
          ),
          Switch(
            value: switchValue,
            activeColor: Colors.white,
            activeTrackColor: Colors.blueAccent,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Colors.black,
            onChanged: (bool value) {
              setState(() {
                switchValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}



