import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../bottom_navigation/bar_charts_screen.dart';
import '../bottom_navigation/line_charts_screen.dart';
import '../bottom_navigation/pie_charts_screen.dart';

class UiDesignScreen extends StatefulWidget {
  const UiDesignScreen({Key? key}) : super(key: key);

  @override
  State<UiDesignScreen> createState() => _UiDesignScreenState();
}

class _UiDesignScreenState extends State<UiDesignScreen> {
  @override

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


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade300,
        centerTitle: true,
        title: const Text("Drawer Demo"),
      ),
      drawer: Drawer(
        width: 300,
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            "SS",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Solanki Sandhya",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "solankisandhya011@gmail.com",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.white),
                            ),
                            Text("904246899",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Icon(Icons.notifications),
                    ),
                    Text("Notification"),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Icon(Icons.settings),
                    ),
                    Text("Setting"),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Icon(Icons.block),
                    ),
                    Text("Block")
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Icon(Icons.login),
                    ),
                    Text("Login")
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Icon(Icons.logout),
                    ),
                    Text("Logout")
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.all(2),
                color: Colors.white70,
                  child: Column(
                    children: [
                      Image.asset(
                              "assets/images/chef image.jpeg",
                              height: 250,
                            ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'User Name',
                            hintText: 'Enter Your Name',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            hintText: 'Enter Your Password',
                          ),
                        ),
                      ),
                  Row(children: [
                    SizedBox(width: 70,),
                    Container(
                      child: GestureDetector(
                        onTap: (){},
                        child: Container(
                          width: 80,
                          child: Center(child: Text('SignUp', style: TextStyle(fontSize: 20.0),)),
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(25),
                      child: GestureDetector(
                        onTap: (){},
                        child: Container(
                          width: 80,
                          child: Center(child: Text('LogIn', style: TextStyle(fontSize: 20.0),)),
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ]
                  ),
              ],
                  ),
              ),
            ),
            Container(

              padding: new EdgeInsets.all(10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.grey,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album, size: 60),
                      title: Text(
                          'Sonu Nigam',
                          style: TextStyle(fontSize: 30.0)
                      ),
                      subtitle: Text(
                          'Best of Sonu Nigam Music.',
                          style: TextStyle(fontSize: 18.0)
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {/* ... */},
                          child: Container(
                            width: 60,
                            color: Colors.white,
                            child: Center(child: const Text('Play')),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {/* ... */},
                          child: Container(
                            width: 60,
                            color: Colors.white,
                            child: Center(child: const Text('Pause')),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            TableCalendar(
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
                  decoration: BoxDecoration(color: Colors.grey),
                  formatButtonDecoration: BoxDecoration(
                      color: Colors.blueGrey,
                      shape: BoxShape.rectangle,
                      border: BoxBorder.lerp(Border.all(), Border.all(), 20),
                      backgroundBlendMode: BlendMode.darken)),
              focusedDay: DateTime.now(),
              //  daysOfWeekStyle: DaysOfWeekStyle(weekdayStyle:TextStyle(color: Colors.orangeAccent,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 15,) ),
              firstDay: DateTime.utc(2023, 10, 16),
              calendarBuilders: CalendarBuilders(),
              lastDay: DateTime.utc(2025, 10, 14),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4,left: 240,bottom: 16),
              child: Container(
                height: 40,
                width: 70,
                color: Colors.blue,
                child: Icon(Icons.arrow_back_rounded),
              ),
            ),
          ],

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity),
                label: 'Home',
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.blueGrey),
            BottomNavigationBarItem(label: 'search',
                icon: Icon(Icons.search), backgroundColor: Colors.yellow),
            BottomNavigationBarItem(label: 'Me',
              icon: Icon(Icons.more_vert),
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
