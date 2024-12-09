import 'package:flutter/material.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({Key? key}) : super(key: key);

  @override
  State<SnackBarScreen> createState() => _SnackBarScreenState();
}

_displayDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('TextField AlertDemo'),
          content: TextField(
            decoration: InputDecoration(hintText: "TextField in Dialog"),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                child: new Text('SUBMIT'),
              ),
            )
          ],
        );
      });
}

class _SnackBarScreenState extends State<SnackBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Radio button Example"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text(
                    'Hey! This is a SnackBar message.',
                    style: TextStyle(overflow: TextOverflow.ellipsis),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _displayDialog(context);
                    },
                    child: Text("Show button",style: TextStyle(overflow: TextOverflow.ellipsis),),
                  )
                ],
              ),
            ),
            duration: Duration(seconds: 5),
            actionOverflowThreshold: 0.5,
            behavior: SnackBarBehavior.floating,
            elevation: 30,
            closeIconColor: Colors.blue,
            showCloseIcon: true,
            dismissDirection: DismissDirection.horizontal,
            hitTestBehavior: HitTestBehavior.translucent,
            // action: SnackBarAction(
            //   label: '',
            //   onPressed: () {
            //
            //   },
            // ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Container(
            height: 800,
            width: 300,
            child: Text(
              "Show Snackbar",
            )),
      ),
    );
  }
}
