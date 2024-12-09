// import 'package:flutter/material.dart';
//
// class ProfilePageScreen extends StatefulWidget {
//   const ProfilePageScreen({Key? key}) : super(key: key);
//
//   @override
//   State<ProfilePageScreen> createState() => _ProfilePageScreenState();
// }
//
// class _ProfilePageScreenState extends State<ProfilePageScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 30, left: 12),
//                 child: Text(
//                   "Spicy",
//                   style: TextStyle(fontSize: 28),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 30, right: 12),
//                 child: Container(
//                   height: 35,
//                   width: 35,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(50),
//                   ),
//                   child: Center(child: Icon(Icons.arrow_back_rounded)),
//                 ),
//               ),
//             ],
//           ),
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               color: Colors.amberAccent,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey,
//                   offset: new Offset(6.0, 6.0),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({super.key});

  @override
  State<ProfilePageScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfilePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange.shade50,
        body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 25, left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My Profile",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        )),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(Icons.arrow_back))
                  ],
                ),
              ),
              SizedBox(

                height: 20,
              ),
              Container(
                // height: 200,
                width: 350,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.orange.shade50,
                        blurRadius: 60,
                        blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange.shade100,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 290, top: 5),
                      child: Container(
                        child: Icon(
                          Icons.edit,
                          size: 23,
                        ),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.orange.shade50,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    Container(
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            "assets/images/Face.image.jpeg",
                            height: 90,
                            width: 90,
                          )),
                    ),
                    Text(
                      "Zara Rusmansen",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        height: 80,
                        width: 330,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SizedBox(

                                width: 7,
                              ),
                              Icon(
                                Icons.gif_box,
                                size: 30,
                                color: Colors.orange.shade800,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 54),
                                      child: Text(
                                        "14.850",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 17),
                                      ),
                                    ),
                                    Text(
                                      "Product Selce",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 17),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(

                                width: 10,
                              ),
                              Icon(
                                Icons.change_circle_sharp,
                                size: 30,
                                color: Colors.yellow.shade700,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Text(
                                        "14.850",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 17),
                                      ),
                                    ),
                                    Text(
                                      "Engening",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 17),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange.shade50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 25, left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recent Orders", style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30,))
                    ,
                    Text("See All", style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.blueGrey),)
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                    children: [
                      Container(
                        height: 110,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                        child: Row(
                          children: [
                            Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 60,
                                    decoration: BoxDecoration(color: Colors
                                        .black,
                                        borderRadius: BorderRadius.circular(
                                            20)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              30)
                                      ),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              50),
                                          child: Image.asset(
                                            "assets/images/burger.jpeg",
                                            height: 60,
                                            width: 60,
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              30)
                                      ),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              50),
                                          child: Image.asset(
                                            "assets/images/burger.jpeg",
                                            height: 60,
                                            width: 60,
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              30)
                                      ),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              50),
                                          child: Image.asset(
                                            "assets/images/burger.jpeg",
                                            height: 60,
                                            width: 60,
                                          )),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 21, left: 10),
                              child: Column(
                                children: [
                                  Text("Beaf Burger", style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Text("Ice Cream", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 25),
                                    child: Text("Barrise", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),),
                                  ),

                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 55, top: 25),
                              child: Column(children: [
                                Text("jgjuk Now", style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Center(child: Text("020.22",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),),),
                                    height: 30,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(11),
                                      color: Colors.white,

                                    ),
                                  ),
                                ),
                              ],),
                            ),
                          ],
                        ),
                      ),
                    ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                    children: [
                      Container(
                        height: 110,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                        child: Row(
                          children: [
                            Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 60,
                                    decoration: BoxDecoration(color: Colors
                                        .black,
                                        borderRadius: BorderRadius.circular(
                                            20)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              30)
                                      ),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              50),
                                          child: Image.asset(
                                            "assets/images/burger.jpeg",
                                            height: 60,
                                            width: 60,
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              30)
                                      ),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              50),
                                          child: Image.asset(
                                            "assets/images/burger.jpeg",
                                            height: 60,
                                            width: 60,
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              30)
                                      ),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              50),
                                          child: Image.asset(
                                            "assets/images/burger.jpeg",
                                            height: 60,
                                            width: 60,
                                          )),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 21, left: 10),
                              child: Column(
                                children: [
                                  Text("Beaf Burger", style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Text("Ice Cream", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 25),
                                    child: Text("Barrise", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),),
                                  ),

                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 55, top: 25),
                              child: Column(children: [
                                Text("jgjuk Now", style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Center(child: Text("020.22",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),),),
                                    height: 30,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(11),
                                      color: Colors.white,

                                    ),
                                  ),
                                ),
                              ],),
                            ),
                          ],
                        ),
                      ),
                    ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                    children: [
                      Container(
                        height: 110,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                        child: Row(
                          children: [
                            Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 60,
                                    decoration: BoxDecoration(color: Colors
                                        .black,
                                        borderRadius: BorderRadius.circular(
                                            20)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              30)
                                      ),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              50),
                                          child: Image.asset(
                                            "assets/images/burger.jpeg",
                                            height: 60,
                                            width: 60,
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              30)
                                      ),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              50),
                                          child: Image.asset(
                                            "assets/images/burger.jpeg",
                                            height: 60,
                                            width: 60,
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              30)
                                      ),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              50),
                                          child: Image.asset(
                                            "assets/images/burger.jpeg",
                                            height: 60,
                                            width: 60,
                                          )),
                                    ),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 21, left: 10),
                              child: Column(
                                children: [
                                  Text("Beaf Burger", style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Text("Ice Cream", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 25),
                                    child: Text("Barrise", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),),
                                  ),

                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 55, top: 25),
                              child: Column(children: [
                                Text("jgjuk Now", style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Center(child: Text("020.22",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),),),
                                    height: 30,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(11),
                                      color: Colors.white,

                                    ),
                                  ),
                                ),
                              ],),
                            ),
                          ],
                        ),
                      ),
                    ]
                ),
              )
            ]
        )
    );
  }
  }
