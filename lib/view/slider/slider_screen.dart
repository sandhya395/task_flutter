import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  SliderScreen({Key? key}) : super(key: key);
  RangeValues _currentRangeValues = const RangeValues(0, 100);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

double slider = 0.1;

class _SliderScreenState extends State<SliderScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          "Progress Bar",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Row(
        children: [
          Icon(
            Icons.volume_up,
            size: 40,
          ),
          Expanded(
            child: SliderTheme(
              data: SliderThemeData().copyWith(),
              child: Slider(
                value: slider,
                label:slider.toString() ,
                allowedInteraction: SliderInteraction.slideThumb,
                divisions: 100,
                inactiveColor: Colors.white,
                activeColor: Colors.black,
                // focusNode: FocusNode(debugLabel: "ok"),
                // mouseCursor: MouseCursor.defer,
                // thumbColor:Color.lerp(Colors.grey, Colors.brown, 50,) ,
                secondaryActiveColor: Color(40),
                overlayColor:WidgetStateProperty.all(Colors.green),
                max: 100,
                min: 0,
                autofocus: true,
                onChanged: (double value) {
                  setState(() {
                    // numberOfPassengers = value;
                    slider = value;
                  });
                  print(value);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
