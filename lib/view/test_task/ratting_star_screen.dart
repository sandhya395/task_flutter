import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
class RattingStarScreen extends StatefulWidget {
  const RattingStarScreen({Key? key}) : super(key: key);

  @override
  State<RattingStarScreen> createState() => _RattingStarScreenState();
}

class _RattingStarScreenState extends State<RattingStarScreen> {
  double value = 3.5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Example'),
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.blueGrey,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [





              Text('Rotate example'),
              RatingStars(
                axis: Axis.horizontal,
                value: value,
                onValueChanged: (v) {
                  //
                  setState(() {
                    value = v;
                  });
                },
                starCount: 5,
                starSize: 20,
                valueLabelColor: const Color(0xff9b9b9b),
                valueLabelTextStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 12.0),
                valueLabelRadius: 10,
                maxValue: 5,
                starSpacing: 2,
                maxValueVisibility: true,
                valueLabelVisibility: true,
                animationDuration: Duration(milliseconds: 1000),
                valueLabelPadding:
                const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                valueLabelMargin: const EdgeInsets.only(right: 8),
                starOffColor: const Color(0xffe7e8ea),
                starColor: Colors.yellow,
                angle: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
