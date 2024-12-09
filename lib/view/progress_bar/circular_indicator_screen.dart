import 'dart:async';

import 'package:flutter/material.dart';
class CircularIndicatorScreen extends StatelessWidget {
  const CircularIndicatorScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Progress Bar",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.black,
      ),

      body: Center(child: CircularProgressIndicator(
        // valueColor:  AlwaysStoppedAnimation<Color>(Colors.red),
        semanticsValue: "ok",
        value: 0.6,
        backgroundColor: Colors.cyan,
        color: Colors.black,
        strokeAlign: 5,
        strokeCap:StrokeCap.square ,
        strokeWidth: 15,
      )),
    );
  }
}
  //     body: Center(
  //       child: Container(
  //         padding: EdgeInsets.all(12.0),
  //         child: _loading!
  //             ? Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: <Widget>[CircularProgressIndicator(
  //              valueColor:  AlwaysStoppedAnimation<Color>(Colors.red),
  //              semanticsValue: "ok",
  //              value: 0.6,
  //              backgroundColor: Colors.cyan,
  //              color: Colors.black,
  //              strokeAlign: 5,
  //             strokeCap:StrokeCap.square ,
  //             strokeWidth: 15,
  //
  //
  //       ),
  //         ],
  //             : Text("Press button for downloading", style: TextStyle(fontSize: 25)),
  //       ),
  //     ),
  //    floatingActionButton: FloatingActionButton(
  //     onPressed: () {
  //       setState(() {
  //       _loading = !_loading;
  //       _updateProgress();
  //   });
  //   },
    //       tooltip: 'Download',
  //       child: Icon(Icons.cloud_download),
  //     ),
  //   );
  // }
  // // this function updates the progress value
  // void _updateProgress() {
  //   const oneSec = const Duration(seconds: 3);
  //   new Timer.periodic(oneSec, (Timer t) {
  //     setState(() {
  //       _progressValue += 0.1;
  //       // we "finish" downloading here
  //       if (_progressValue?.toStringAsFixed(1) == '1.0') {
  //         _loading = false;
  //         t.cancel();
  //         return;
  //       }
  //     });

