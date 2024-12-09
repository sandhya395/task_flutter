import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:test_task_design/GetxState/ui_screen/ui_screen_design_2.dart';

import '../../view/test_task/item_widget.dart';
import '../../view/test_task/item_widget2_screen.dart';

class UiScreenDesign1 extends StatefulWidget {
  const UiScreenDesign1({Key? key}) : super(key: key);

  @override
  State<UiScreenDesign1> createState() => _UiScreenDesign1State();
}

class _UiScreenDesign1State extends State<UiScreenDesign1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey.shade300,
      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children:[ Stack(
            children:[ Container(
              height: 230,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30,right: 40),
                      child: Text("Your location",style: TextStyle(color: Colors.white54),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Icon(Icons.location_on,color: Colors.white,),
                          SizedBox(width: 4,),
                          Text("Depak.Jawa Barat",style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                  ],
                ),
            Padding(
              padding: const EdgeInsets.only(bottom: 120,left: 110),
              child: Container(height: 35,width: 35,
                child: Icon(Icons.mark_as_unread_sharp,color: Colors.grey,),
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),),
            ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 120,left: 13),
                  child: Container(height: 35,width: 35,
                    child: Icon(Icons.notifications_none,color: Colors.grey,),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),),
                ),
              ],),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 90,left: 22),
                child: Align(alignment: Alignment.center,
                    child: Stack(children:[ Container(height: 180,width: 316,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),)
                   , Padding(
                     padding: const EdgeInsets.only(top: 12,left: 16),
                     child: Container(height: 50,width: 282,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                         Column(children: [
                           SizedBox(height: 5,),
                           Row(
                             children: [
                               Icon(Icons.wallet,size: 10,color: Colors.blue,),
                               SizedBox(width: 5,),
                               Text("Wallet",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                             ],

                           ),
                           SizedBox(height: 5,),
                           Container(height: 15,width: 45,
                             child: Center(child: Text("Paytren",style: TextStyle(fontSize: 10,color: Colors.red),)),
                             decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),),
                         ],),
                           Column(children: [
                             SizedBox(height: 5,),
                             Row(
                               children: [
                                 Icon(Icons.paid,size: 10,color: Colors.red,),
                                 SizedBox(width: 5,),
                                 Text("Paint",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                               ],

                             ),
                             SizedBox(height: 5,),
                             Container(height: 15,width: 45,
                               child: Center(child: Text("120.000",style: TextStyle(fontSize: 10,color: Colors.red),)),
                               decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),),
                           ],),
                           Column(children: [
                             SizedBox(height: 5,),
                             Row(
                               children: [
                                 Icon(Icons.cached_outlined,size: 10,color: Colors.red,),
                                 SizedBox(width: 5,),
                                 Text("Coupon",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                               ],

                             ),
                             SizedBox(height: 5,),
                             Container(height: 15,width: 57,
                               child: Center(child: Text("23coupons",style: TextStyle(fontSize: 10,color: Colors.red),)),
                               decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),),
                           ],),
                       ],),
                       decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.grey.shade300)),),
                   ),
          Padding(
            padding: const EdgeInsets.only(top:80,right: 28 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
             Column(
               children: [
           Image.asset("assets/images/park.images.jpeg",height: 30,width: 30,),
            Text("park"),
               ],
             ),
              Column(
          children: [
            Image.asset("assets/images/coffee shope image.2.jpeg",height: 30,width: 30,),
            Text("restorent"),
          ],
              ),
              Column(
          children: [
            Image.asset("assets/icons/flat-hotel-facade-background_23-2148156669.jpg",height: 30,width: 30,),
            Text("hotel"),
          ],
              ),
              Column(
          children: [
            Image.asset("assets/images/park.images.jpeg",height: 30,width: 30,),
            Text("store"),
          ],
              ),
            ],),
          ),

                      Padding(
                        padding: const EdgeInsets.only(top: 140,left: 20),
                        child: Container(height: 30,width: 260
                          ,child: Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [Icon(Icons.border_all_rounded,color: Colors.blue,),
                          SizedBox(width: 10,),
                          Text("All categories")
                          ],),)
                          ,decoration: BoxDecoration(color: Colors.blue.shade50,borderRadius: BorderRadius.circular(10)),),
                      )
                    ])),
              ),
          // Padding(
          //     padding: const EdgeInsets.only(top: 300),
          //     child: TextField(decoration: InputDecoration(hintText: "ihyin",border: OutlineInputBorder(borderSide: BorderSide(width: 10))),)
          // ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 290),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 23),
                      padding: EdgeInsets.symmetric(horizontal: 9),
                      height: 40,
                      width: 250,
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
                                // suffixIcon: Icon(Icons.confirmation_num_sharp),
                                fillColor:Color(5) ,
                                focusColor: Color(100),
                                border: InputBorder.none,
                                hintText: "Search place",
                                enabledBorder: InputBorder.none,
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              ),

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 294),
                    child: Container(height: 40,width: 40,
                      child: Icon(Icons.browser_updated_outlined,color: Colors.white,size: 20,),
                      decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(10)),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 360,left: 27,right: 18),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("For you",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                  Text("See more >",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),

                ],),
              ),

          ]
          ),
            // ItemWidget()
            // ItemWidget2Screen(),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 130,
                        padding: EdgeInsets.only(



                        ),
                        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 110,
                                width: 320,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: GestureDetector(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => UiScreenDesign2()));

                                      },
                                      child: Image.asset(
                                        "assets/icons/images.jpeg",
                                        fit: BoxFit.cover,

                                        // width: MediaQuery.of(context).size.width / 1,
                                      ),
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: 3,
                                  top: 3,
                                  child: Container(
                                    decoration: BoxDecoration(color: Colors.grey,borderRadius:BorderRadius.circular(6) ),
                                    child: Text(
                                      "   Park   ",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Anime Street.",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),

                            Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                   Icon(Icons.star,color: Colors.red,size: 16,),
                                    Text(
                                      " 4.5",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    Text(
                                      "(123 reviws)",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ],
                                )),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Row(

                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Text(
                                    "Citavem",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 130,
                        padding: EdgeInsets.only(



                        ),
                        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),

                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 110,
                                  width: 320,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: GestureDetector(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => UiScreenDesign2()));

                                      },
                                      child: Image.asset(
                                        "assets/icons/download (1).jpeg",
                                        fit: BoxFit.cover,

                                        // width: MediaQuery.of(context).size.width / 1,
                                      ),
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: 3,
                                  top: 3,
                                  child: Container(
                                    decoration: BoxDecoration(color: Colors.grey,borderRadius:BorderRadius.circular(6) ),
                                    child: Text(
                                      "   Park   ",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Anime Street.",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),

                            Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.red,size: 16,),
                                    Text(
                                      " 4.5",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    Text(
                                      "(123 reviws)",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ],
                                )),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Row(

                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Text(
                                    "Citavem",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 130,
                        padding: EdgeInsets.only(



                        ),
                        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 110,
                                  width: 320,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/icons/flat-hotel-facade-background_23-2148156669.jpg",
                                      fit: BoxFit.cover,

                                      // width: MediaQuery.of(context).size.width / 1,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: 3,
                                  top: 3,
                                  child: Container(
                                    decoration: BoxDecoration(color: Colors.grey,borderRadius:BorderRadius.circular(6) ),
                                    child: Text(
                                      "   Park   ",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Anime Street.",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),

                            Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.red,size: 16,),
                                    Text(
                                      " 4.5",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    Text(
                                      "(123 reviws)",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ],
                                )),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Row(

                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Text(
                                    "Citavem",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 130,
                        padding: EdgeInsets.only(



                        ),
                        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 110,
                                  width: 320,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/icons/gettyimages-1454847318-612x612.jpg",
                                      fit: BoxFit.cover,

                                      // width: MediaQuery.of(context).size.width / 1,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: 3,
                                  top: 3,
                                  child: Container(
                                    decoration: BoxDecoration(color: Colors.grey,borderRadius:BorderRadius.circular(6) ),
                                    child: Text(
                                      "   Park   ",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Anime Street.",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),

                            Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.red,size: 16,),
                                    Text(
                                      " 4.5",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    Text(
                                      "(123 reviws)",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ],
                                )),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Row(

                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Text(
                                    "Citavem",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 130,
                        padding: EdgeInsets.only(



                        ),
                        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 110,
                                  width: 320,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/icons/images.jpeg",
                                      fit: BoxFit.cover,

                                      // width: MediaQuery.of(context).size.width / 1,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: 3,
                                  top: 3,
                                  child: Container(
                                    decoration: BoxDecoration(color: Colors.grey,borderRadius:BorderRadius.circular(6) ),
                                    child: Text(
                                      "   Park   ",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Anime Street.",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),

                            Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.red,size: 16,),
                                    Text(
                                      " 4.5",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    Text(
                                      "(123 reviws)",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ],
                                )),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Row(

                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Text(
                                    "Citavem",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 130,
                        padding: EdgeInsets.only(



                        ),
                        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 110,
                                  width: 320,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/icons/download (1).jpeg",
                                      fit: BoxFit.cover,

                                      // width: MediaQuery.of(context).size.width / 1,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: 3,
                                  top: 3,
                                  child: Container(
                                    decoration: BoxDecoration(color: Colors.grey,borderRadius:BorderRadius.circular(6) ),
                                    child: Text(
                                      "   Park   ",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Anime Street.",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),

                            Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.red,size: 16,),
                                    Text(
                                      " 4.5",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    Text(
                                      "(123 reviws)",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ],
                                )),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Row(

                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Text(
                                    "Citavem",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 130,
                        padding: EdgeInsets.only(



                        ),
                        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 110,
                                  width: 320,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/icons/flat-hotel-facade-background_23-2148156669.jpg",
                                      fit: BoxFit.cover,

                                      // width: MediaQuery.of(context).size.width / 1,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: 3,
                                  top: 3,
                                  child: Container(
                                    decoration: BoxDecoration(color: Colors.grey,borderRadius:BorderRadius.circular(6) ),
                                    child: Text(
                                      "   Park   ",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Anime Street.",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),

                            Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.red,size: 16,),
                                    Text(
                                      " 4.5",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    Text(
                                      "(123 reviws)",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ],
                                )),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Row(

                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Text(
                                    "Citavem",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 130,
                        padding: EdgeInsets.only(



                        ),
                        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 110,
                                  width: 320,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/icons/gettyimages-1454847318-612x612.jpg",
                                      fit: BoxFit.cover,

                                      // width: MediaQuery.of(context).size.width / 1,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: 3,
                                  top: 3,
                                  child: Container(
                                    decoration: BoxDecoration(color: Colors.grey,borderRadius:BorderRadius.circular(6) ),
                                    child: Text(
                                      "   Park   ",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Anime Street.",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),

                            Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.red,size: 16,),
                                    Text(
                                      " 4.5",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    Text(
                                      "(123 reviws)",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ],
                                )),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Row(

                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  Text(
                                    "Citavem",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),

                  Container(height: 50,width: 300,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20)),),
                  SizedBox(height: 20,),

                ],
              ),
            ),
            ]
        ),
      ),

    );
  }
}
