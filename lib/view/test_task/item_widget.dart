// import 'package:flutter/material.dart';
//
// class ItemWidget extends StatelessWidget {
//   ItemWidget({super.key});
//   final List<String> imageList = [
//      "assets/images/download (2.1).jpeg",
//     "assets/images/download (2.2).jpeg",
//     "assets/images/pexels-photo.jpg",
//     "assets/images/shoes.jpeg",
//     "assets/images/istockphoto-1629114862-612x612.webp",
//     "assets/images/shopping (1).webp",
//     "assets/images/shopping (2).webp",
// "assets/images/8fsxt_128.webp",
//     "assets/images/shoes(0.1)-182780951-612x612.jpg",
//     // "assets/images/gettyimages-171224469-612x612.jpg",
//     // "assets/images/shoes(0.3)-171253262-612x612.jpg",
//     "assets/images/download (2.1).jpeg",
//     "assets/images/pexels-photo.jpg",
//     "assets/images/istockphoto-1629114862-612x612.webp",
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     // return GridView.builder(
//     //   shrinkWrap: true,
//     //     itemCount: imageList.length,
//     //     gridDelegate:
//     //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 16,crossAxisSpacing: 16),
//     //     itemBuilder: (BuildContext context, int index) {
//     //       return Image.asset(
//     //         imageList[index],
//     //         fit: BoxFit.cover,
//     //       );
//     //     });
//     return GridView.count(
//       childAspectRatio: 0.68,
//       physics: NeverScrollableScrollPhysics(),
//       crossAxisCount: 2,
//       shrinkWrap: true,
//       children: [
//           Container(
//             padding: EdgeInsets.only(left: 15, right: 15, top: 10),
//             margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       padding: EdgeInsets.all(5),
//                       decoration: BoxDecoration(
//                         color: Color(0xFF4C53A5),
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Text(
//                         "-50%",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     Icon(
//                       Icons.favorite_border,
//                       color: Colors.red,
//                     ),
//                   ],
//                 ),
//                 Stack(
//                   children: [InkWell(
//                     onTap: () {},
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       child: Image.asset(
//                         "assets/images/download (2.1).jpeg",
//                         //"assets/$i.png"
//                         height: 50,
//                         width: 50,
//                       ),
//                     ),
//                   ),
//     ]
//     ),
//
//                 Container(
//                   padding: EdgeInsets.only(bottom: 8),
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     "Product Title",
//                     style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFF4C53A5)),
//                   ),
//                 ),
//                 Container(
//                   child: Text(
//                     "Write description of product",
//                     style: TextStyle(fontSize: 15, color: Color(0xFF4C53A5)),
//                   ),
//                   alignment: Alignment.centerLeft,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(vertical: 10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("\$55", style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF4C53A5)),),
//                       Icon(Icons.shopping_cart_checkout,color: Color(0xFF4C53A5) ,),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class ItemWidget extends StatelessWidget {
  ItemWidget({super.key});

  // Fix the missing commas in the list
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
    return Container(
      color: Colors.blueGrey,
      width: 320,

      child: GridView.builder(
        // Specify the number of items in the grid
        itemCount: imageList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true, // Add shrinkWrap to adapt to the content height
        itemBuilder: (BuildContext context, int index) {
          return   Stack(children: [
            Container(
              width: 130,

              padding: EdgeInsets.only(
                left: 5,
                right: 5,
                top: 5,
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
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          imageList[index],
                          fit: BoxFit.cover,
                          height: 60,
                          width: 120,
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
                        child: Container(
                          // height: 14,width: 26,
                          decoration: BoxDecoration(color: Colors.grey),
                          child: Text(
                            "park",
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
          ],);
        },
      ),
    );
  }
}
