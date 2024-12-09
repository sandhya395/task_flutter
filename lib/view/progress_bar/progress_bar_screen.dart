import 'dart:async';

import 'package:flutter/material.dart';

class ProgressBarScreen extends StatefulWidget {
  const ProgressBarScreen({Key? key}) : super(key: key);

  @override
  State<ProgressBarScreen> createState() => _ProgressBarScreenState();
}

class _ProgressBarScreenState extends State<ProgressBarScreen> {

  bool?_loading;
  double _progressValue=0.0;

  @override
  void initState() {
    super.initState();
    _loading = false;

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Progress Bar",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(12.0),
          child: _loading!
              ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LinearProgressIndicator(
                backgroundColor: Colors.white,
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),
                value: _progressValue,
                color: Colors.blue,
                semanticsValue:"ok" ,
                minHeight: 10,
               semanticsLabel: "abc",
                borderRadius: BorderRadius.circular(8),
              ),
              Text('${(_progressValue! * 100).round()}%'),
            ],
          )
              : Text("Press button for downloading", style: TextStyle(fontSize: 25)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _loading = !_loading!;
            _updateProgress();
          });
        },
        tooltip: 'Download',
        child: Icon(Icons.cloud_download),
      ),
    );
  }
  // this function updates the progress value
  void _updateProgress() {
    const oneSec = const Duration(seconds: 3);
    new Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.1;
        // we "finish" downloading here
        if (_progressValue?.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          return;
        }
      });
    });
  }
  // body: Center(
      //   child: Container(
      //     padding: EdgeInsets.all(12.0),
      //     child:  LinearProgressIndicator(
      //       color: Colors.cyan,
      //       backgroundColor: Colors.yellow,
      //       value: 0.5,
      //       borderRadius:BorderRadius.circular(10) ,
      //       minHeight: 15,
      //       semanticsLabel: "uguy",
      //       semanticsValue: "ok",
      //       valueColor:  AlwaysStoppedAnimation<Color>(Colors.red),
      //     )
      //
      // ),
      // ),

  }

