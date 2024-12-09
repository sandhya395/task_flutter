import 'package:flutter/material.dart';
import 'package:test_task_design/view/bottom_navigation/pie_charts_screen.dart';

import 'bar_charts_screen.dart';
import 'line_charts_screen.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar() : super();

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static  List<Widget> _widgetOptions = <Widget>[

    BarChartSample1(),
    PieChartSample3(),
    BarChartsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Flutter BottomNavigationBar Example'),
          backgroundColor: Colors.green),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.green),
            BottomNavigationBarItem(label: 'search',
                icon: Icon(Icons.search), backgroundColor: Colors.yellow),
            BottomNavigationBarItem(label: 'Me',
              icon: Icon(Icons.person),
              backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
