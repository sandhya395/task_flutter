import 'package:flutter/material.dart';

class CartPageScreen extends StatefulWidget {
  const CartPageScreen({Key? key}) : super(key: key);

  @override
  State<CartPageScreen> createState() => _CartPageScreenState();
}

class _CartPageScreenState extends State<CartPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 12),
                child: Text(
                  "Cart",
                  style: TextStyle(fontSize: 28),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 12),
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      "3",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 10,),
          Stack(alignment: Alignment.topCenter, children: [
            Container(
              padding: EdgeInsets.all(15),
              height: 700,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(38)),
            ),
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        padding: EdgeInsets.only(right: 20),
                        margin: EdgeInsets.only(left: 5),
                        height: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey),
                        child: Row(
                          children: [
                            Container(
                              height: 70,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(color: Colors.yellow),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(80),
                              child: Image.asset(
                                "assets/images/burger-download (50).jpeg",
                                width: MediaQuery.of(context).size.width / 5,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Peparini moo",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic),
                                ),
                                Container(
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text(
                                      "\$12.99",
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                "+",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                "1",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.pink.shade200),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                "-",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                      height: 110,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(17)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        padding: EdgeInsets.only(right: 20),
                        margin: EdgeInsets.only(left: 5),
                        height: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey),
                        child: Row(
                          children: [
                            Container(
                              height: 70,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(color: Colors.yellow),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(80),
                              child: Image.asset(
                                "assets/images/burger-download (50).jpeg",
                                width: MediaQuery.of(context).size.width / 5,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Peparini moo",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic),
                                ),
                                Container(
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text(
                                      "12.99",
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.pink.shade200),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                      height: 110,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(17)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        padding: EdgeInsets.only(right: 20),
                        margin: EdgeInsets.only(left: 5),
                        height: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey),
                        child: Row(
                          children: [
                            Container(
                              height: 70,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(color: Colors.yellow),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(80),
                              child: Image.asset(
                                "assets/images/burger-download (50).jpeg",
                                width: MediaQuery.of(context).size.width / 5,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Peparini moo",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic),
                                ),
                                Container(
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text(
                                      "12.99",
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.pink.shade200),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                      height: 110,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(17)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(

                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery Amount",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 15),
                          ),
                          Text("4.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                        ],
                      ),
                      Text("_________________________________________________"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Total Amount",
                                style: TextStyle(
                                    fontSize: 15, fontStyle: FontStyle.italic),
                              ),
                              Text("USD 38.15",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),)
                            ],
                          ),
                          Row(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(80),
                              child: Image.asset(
                                "assets/images/burger-download (50).jpeg",
                                width: MediaQuery.of(context).size.width / 8,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(80),
                              child: Image.asset(
                                "assets/images/burger-download (50).jpeg",
                                width: MediaQuery.of(context).size.width / 8,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(80),
                              child: Image.asset(
                                "assets/images/burger-download (50).jpeg",
                                width: MediaQuery.of(context).size.width / 8,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],),

                        ],
                      ),
                    ],
                  ),
                  height: 150,
                  width: 385,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.pink.shade100),
                ),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
