import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 12),
                  child: Text(
                    "Spicy",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 12),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(child: Icon(Icons.arrow_back_rounded)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 315),
              child: Text(
                "Beast",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            "assets/images/i1.jpeg",
                            height: 250,
                            width: 270,
                            fit: BoxFit.fill,
                          )),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Container(
                      decoration: BoxDecoration(
                        // boxShadow: [
                        //   new BoxShadow(color: Colors.white70, offset: new Offset(4.0, 6.0),),
                        // ],
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white70,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Double cheese",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.blueGrey),
                          ),
                          Text(
                            "Burger",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.blueGrey),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            "370 g",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      height: 105,
                      width: 150,
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
              
                children: [
                  Container(
                    height: 100,
                    transform: Matrix4.rotationZ(0.9),
                    width: 100,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(width: 320,),
                  Container(
                    height: 100,
                    transform: Matrix4.rotationZ(0.9),
                    width: 100,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
