import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {
  late Animation<Color?> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    // animation = Tween<double>(begin: 100, end: 500).animate(controller)
    //   ..addListener(() {
    //     setState(() {});
    //   })
    // animation = ColorTween(begin: Colors.red, end: Colors.purple,).animate(controller);
    animation = ColorTween(
      begin: Colors.grey,
      end: Colors.blue,
    ).animate(controller)
      ..addListener(() {
        setState(() {});
      })
      // Tween<Color>(begin: Colors.red, end: Colors.purple)
      //     .animate(controller)
      //   ..addListener(() {
      //     setState(() {});
      //   })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    CurvedAnimation(parent: controller, curve: Curves.bounceIn);
    controller.forward();
  }

  static const platform = MethodChannel('samples.flutter.dev/battery');
// Get battery level.
  String _batteryLevel = 'Unknown battery level.';

  Future<void> _getBatteryLevel() async {
    String batteryLevel;
    try {
      final result = await platform.invokeMethod<int>('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }

    setState(() {
      _batteryLevel = batteryLevel;
    });
  }
  Future<void> _openBrowser() async {
    try {
      final int result = await platform.invokeMethod(
          'openBrowser', <String, String>{'url': "https://www.javatpoint.com"});
    } on PlatformException catch (e) {
      // Unable to open the browser
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _getBatteryLevel();
        },
        child: Text("open"),
      ),
      body: Center(
        child: Container(
          color: animation.value,
          height: 400,
          width: 400,
          child: Text(_batteryLevel),
          // height: animation.value,
          // width: animation.value,
        ),
      ),
    );
  }
}
