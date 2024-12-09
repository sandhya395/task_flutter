// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
//
// import '../getx_controller/getx_controller_2.dart';
// import '../getx_controller/getx_controller_3.dart';
//
//
// class UiScreen3 extends StatelessWidget {
//   const UiScreen3({Key? key}) : super(key: key);
//
//   final PostDataController productController = Get.put(PostDataController());
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         leading: Icon(
//           Icons.arrow_back_ios,
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(
//               Icons.shopping_cart,
//             ),
//             onPressed: () {},
//           )
//         ],
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Text(
//                     'Learn with pradeep',
//                     style: TextStyle(
//                         fontFamily: 'avenir',
//                         fontSize: 32,
//                         fontWeight: FontWeight.w900),
//                   ),
//                 ),
//                 IconButton(
//                     icon: Icon(Icons.view_list_rounded), onPressed: () {}),
//                 IconButton(icon: Icon(Icons.grid_view), onPressed: () {}),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Obx(() {
//               if (PostDataController.productlist2.value)
//                 return Center(child: CircularProgressIndicator());
//               else
//
//                 return GridView.builder(
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       mainAxisSpacing: 10,
//                       crossAxisSpacing: 10,
//                       childAspectRatio: 1 / 4),
//                   itemCount: PostDataController.islodding2.length,
//                   itemBuilder: (context, i) =>
//                       Container(
//                         color: Colors.blue,
//                         child: Column(
//                           children: [
//                             Text(postDataController.productlist2[i].),
//                             Text(postDataController.productlist2[i].name),
//                             Text(postDataController.productlist2[i].removeAllWhitespace),
//                             Text(postDataController.productlist2[i].description),
//                           ],
//                         ),
//                       ),
//                 );
//             }),
//           )
//         ],
//       ),
//     );
//   }
// }
//
// }
// }
