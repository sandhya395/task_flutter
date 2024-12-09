import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {

  final List<String> imageList = [
    "assets/images/download (2.1).jpeg",
    "assets/images/download (2.2).jpeg",
    "assets/images/pexels-photo.jpg",
    "assets/images/shoes.jpeg",
    "assets/images/istockphoto-1629114862-612x612.webp",
    "assets/images/shopping (1).webp",
    "assets/images/shopping (2).webp",
    "assets/images/8fsxt_128.webp",
    "assets/images/shoes(0.1)-182780951-612x612.jpg",
    // "assets/images/gettyimages-171224469-612x612.jpg",
    // "assets/images/shoes(0.3)-171253262-612x612.jpg",
    "assets/images/download (2.1).jpeg",
    "assets/images/pexels-photo.jpg",
    "assets/images/istockphoto-1629114862-612x612.webp",
  ];
  double value = 3.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ugt"),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        // shrinkWrap: true,
        // addSemanticIndexes: true,
        // semanticChildCount: 2,
        // clipBehavior: Clip.none,
        children:[ Container(
          // margin: EdgeInsets.symmetric(vertical: 25.0),
          // height: 150,

        
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(height: 20,),
              Container(
                width: 130,
                padding: EdgeInsets.only(
                  left: 5,
                  right: 5,
                  top: 5,
                ),
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/images/download (2.2).jpeg",
                            fit: BoxFit.cover,
                            height: 60,
                            width: 140,
                            // width: MediaQuery.of(context).size.width / 1,
                          ),
                        ),
                        Positioned(
                          right: 4,
                          child: Icon(
                            Icons.favorite_border,
                            size: 15,
                            color: Colors.black,
                          ),
                        ),
                        Positioned(
                          left: 3,
                          child: Text(
                            "50 %",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Runnig Shoes.",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                    Row(
                      children: [
                        RatingStars(
                          axis: Axis.horizontal,
                          value: value,
                          onValueChanged: (v) {
                            //
                            setState(() {
                              value = v;
                            });
                          },
                          starCount: 5,
                          starSize: 10,
                          valueLabelColor: const Color(0xff9b9b9b),
                          valueLabelTextStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 1.0),
                          valueLabelRadius: 10,
                          maxValue: 5,
                          starSpacing: 1,
                          maxValueVisibility: true,
                          valueLabelVisibility: true,
                          animationDuration: Duration(milliseconds: 1000),
                          valueLabelPadding:
                          const EdgeInsets.symmetric(vertical:0, horizontal: 0),
                          valueLabelMargin: const EdgeInsets.only(right: 0),
                          starOffColor: const Color(0xffe7e8ea),
                          starColor: Colors.red,
                          angle: 0,
                        ),
        
        
        
                      ],
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Shoes",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.italic),
                        )),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$55",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          Icon(
                            Icons.shopping_cart_checkout,
                            color: Colors.red,
                            size: 15,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 20,),
        
        
        
        
        
            ],
          ),
        ),
    ]
      ),
    

    );
  }
}
