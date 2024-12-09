import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class DateTimelineScreen extends StatefulWidget {
  const DateTimelineScreen({Key? key}) : super(key: key);

  @override
  State<DateTimelineScreen> createState() => _DateTimelineScreenState();
}

final EasyInfiniteDateTimelineController _controller =
    EasyInfiniteDateTimelineController();
DateTime? _focusDate = DateTime.now();

class _DateTimelineScreenState extends State<DateTimelineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Date Time"),),
        body: Center(
            child: Column(
      children: [
        EasyInfiniteDateTimeLine(
          selectionMode: const SelectionMode.autoCenter(),
          controller: _controller,
          firstDate: DateTime(2024),
          focusDate: _focusDate,
          lastDate: DateTime(2024, 12, 27),
          onDateChange: (selectedDate) {
            setState(() {
              _focusDate = selectedDate;
            });
          },
        ),
        const SizedBox(
          height: 16,
        ),
        Column(
          children: [
            ElevatedButton(
              onPressed: () {
                _controller.animateToFocusDate();
              },
              child: const Text('Animate To Focus Date'),
            ),
            ElevatedButton(
              onPressed: () {
                _controller.animateToCurrentData();
              },
              child: const Text('Animate To Current Date'),
            ),
            ElevatedButton(
              onPressed: () {
                _controller.animateToDate(DateTime(2024, 6, 5));
              },
              child: const Text('Animate To 2024-6-5 '),
            ),
          ],
        ),
      ],
    )));
  }
}
