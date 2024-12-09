import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TableCalendar(
              calendarFormat: CalendarFormat.month,
              startingDayOfWeek: StartingDayOfWeek.sunday,
              // weekNumbersVisible: true,
              calendarStyle: CalendarStyle(
                  todayTextStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  defaultTextStyle: TextStyle()),
              rowHeight: 50,
              headerStyle: HeaderStyle(
                  decoration: BoxDecoration(color: Colors.yellow),
                  formatButtonDecoration: BoxDecoration(
                      color: Colors.yellow,
                      shape: BoxShape.rectangle,
                      border: BoxBorder.lerp(Border.all(), Border.all(), 20),
                      backgroundBlendMode: BlendMode.darken)),
              focusedDay: DateTime.now(),
              //  daysOfWeekStyle: DaysOfWeekStyle(weekdayStyle:TextStyle(color: Colors.orangeAccent,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 15,) ),
              firstDay: DateTime.utc(2023, 10, 16),
              calendarBuilders: CalendarBuilders(),
              lastDay: DateTime.utc(2025, 10, 14),
            ),
          )
        ],
      ),
    );
  }
}
