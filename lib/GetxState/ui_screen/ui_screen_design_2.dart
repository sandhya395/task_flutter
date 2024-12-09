import 'package:flutter/material.dart';

class UiScreenDesign2 extends StatefulWidget {
  const UiScreenDesign2({Key? key}) : super(key: key);

  @override
  State<UiScreenDesign2> createState() => _UiScreenDesign2State();
}

class _UiScreenDesign2State extends State<UiScreenDesign2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 23, left: 14, right: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 35,
                  width: 35,
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 15,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300)),
                ),
                Text(
                  "Destination Datails",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 35,
                  width: 35,
                  child: Icon(
                    Icons.save,
                    size: 15,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            child: Image.asset(
              "assets/icons/download (1).jpeg",
              fit: BoxFit.cover,
            ),
            height: 220,
            width: 360,
            color: Colors.grey,
          ),
          BottomSheet(
            builder: (BuildContext context) {
              return Container(
                height: 200, // Set your desired height
                child: Center(
                  child: Text('This is a Modal Bottom Sheet'),
                ),
              );
            },
            onClosing: () {},
          )
        ],
      ),
    );
  }
}
