import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../slivers/slivers_app_bar_screen.dart';
import 'brand_name_screen.dart';
import 'item_widget.dart';
import 'item_widget2_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;
  static List<Widget> _widgetOptions = <Widget>[
    SliversAppBarScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int currentIndex = 2;

  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 18),
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 30,
                        width: 170,
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor:Color(5) ,
                            focusColor: Color(100),
                            border: InputBorder.none,
                            hintText: "search hear",
                            enabledBorder: InputBorder.none,
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),

                          // decoration: InputDecoration(
                          //     focusedBorder: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(20),
                          //       borderSide: BorderSide(color: Colors.black, width: 2),
                          //     ),
                          //     enabledBorder: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(20),
                          //       borderSide: BorderSide(color: Colors.black, width: 2),
                          //     ),
                          //     disabledBorder: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(20),
                          //       borderSide: BorderSide(color: Colors.black, width: 2),
                          //     ),
                          //     prefixIcon: Icon(Icons.search),
                          //     labelText: "Search shoes"),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.all(19),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white70
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                        "assets/images/pexels-photo.jpg",
                        width: MediaQuery.of(context).size.width / 1,
                        fit: BoxFit.cover,
                                            ),
                      ),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                        Text(
                         "40 ",
                         textAlign: TextAlign.left,
                         style: TextStyle(
                             fontStyle: FontStyle.italic,
                             fontSize: 50,
                             color: Colors.red),
                       ),

                       Text(
                         "% offer ",
                         textAlign: TextAlign.left,
                         style: TextStyle(
                             fontStyle: FontStyle.italic,
                             fontSize: 30,
                             color: Colors.red),
                       ),
                     ],),
                      Positioned(
                          left: 213,
                          top: 0,
                          child: Container(

                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(child: Text("shope now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                            height: 30,
                            width: 90,
                          )),
                    ]
                  ),
                ),

                Container(
                  color: Colors.blueGrey,
                  height: 20,
                  width: 290,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Popular brand",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,fontStyle: FontStyle.italic),),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => BrandNameScreen()));
                          },
                          child: Text("See All",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,fontStyle: FontStyle.italic))),
                    ],
                  ),
                ),
                Container(
                  color: Colors.blueGrey,
                  height: 60,
                  width: 290,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/download(1.1).png",
                          ),
                        ),
                        SizedBox(width: 23,),
                        CircleAvatar(

                          backgroundImage: AssetImage(
                            "assets/images/douload(1.2).png",
                          ),
                        ),
                        SizedBox(width: 23,),
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/douload(1.3).png",
                          ),
                        ),
                        SizedBox(width: 23,),
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/douload(1.4).png",
                          ),
                        ),
                        SizedBox(width: 23,),

                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/douload(1.4).png",
                          ),
                        ),
                        SizedBox(width: 23,),
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/douload(1.4).png",
                          ),
                        ),
                        SizedBox(width: 23,),
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/download(1.1).png",
                          ),
                        ),
                        SizedBox(width: 23,),
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/download(1.1).png",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  color: Colors.blueGrey,
                  height: 20,
                  width: 280,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Men's Shoes",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,fontStyle: FontStyle.italic),),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ItemWidget()));
                          },
                          child: Text("See All",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,fontStyle: FontStyle.italic),)),
                    ],
                  ),
                ),
                ItemWidget2Screen(),
                ItemWidget(),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   elevation: 1,
      //   height: 60,
      //   color: Colors.black,
      //   shape: const CircularNotchedRectangle(),
      //   notchMargin: 10,
      //   clipBehavior: Clip.antiAliasWithSaveLayer,
      //   child: Row(
      //     mainAxisSize: MainAxisSize.max,
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       IconButton(onPressed: (){}, icon: Icon(Icons.grid_view_outlined,size: 25,color: Colors.grey.shade400,))
      //     ],
      //   ),
      // ),
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
