import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../bottom_navigation/bar_charts_screen.dart';
import '../bottom_navigation/line_charts_screen.dart';
import '../bottom_navigation/pie_charts_screen.dart';
import '../slivers/sliver_app_bar_builder_screen.dart';
class BottomNavigation2Screen extends StatefulWidget {
  const BottomNavigation2Screen({Key? key}) : super(key: key);

  @override
  State<BottomNavigation2Screen> createState() => _BottomNavigation2ScreenState();
}

class _BottomNavigation2ScreenState extends State<BottomNavigation2Screen> {
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
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Flutter BottomNavigationBar Example'),
          backgroundColor: Colors.green),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     items: const <BottomNavigationBarItem>[
      //
      //       BottomNavigationBarItem(label: '',
      //           icon: Icon(Icons.grid_view_outlined,size: 25,), backgroundColor: Colors.black),
      //       BottomNavigationBarItem(label: '',
      //           icon: Icon(Icons.shopping_cart,size: 25,), backgroundColor: Colors.black),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.home),
      //           label: '',
      //           backgroundColor: Colors.black),
      //       BottomNavigationBarItem(label: '',
      //         icon: Icon(Icons.favorite,size: 25,),
      //         backgroundColor: Colors.black,
      //       ),
      //       BottomNavigationBarItem(label: '',
      //         icon: Icon(Icons.person,size: 25,),
      //         backgroundColor: Colors.black,
      //       ),
      //     ],
      //     type: BottomNavigationBarType.shifting,
      //     currentIndex: _selectedIndex,
      //     selectedItemColor: Colors.red,
      //     iconSize: 40,
      //     onTap: _onItemTapped,
      //     elevation: 5),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.black,
        backgroundColor: Colors.black,
        animationDuration: Duration(seconds: 1),
        index: 4,
        height: 70,
        buttonBackgroundColor: Colors.red,
        animationCurve:Curves.easeOut ,
        key: _bottomNavigationKey,
        items: <Widget>[
          Icon(Icons.grid_view_outlined, size: 30,color: Colors.white,),
          // Icon(Icons.shopping_cart,color: Colors.white,),
          Icon(Icons.shopping_cart, size: 30,color: Colors.white,),
          Icon(Icons.home, size: 30,color: Colors.white,),
          Icon(Icons.favorite, size: 30,color: Colors.white,),
          Icon(Icons.person, size: 30,color: Colors.white,),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}
