// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
//
// import '../getx_controller/getx_controller_1.dart';
//
// class HomePage extends StatelessWidget {
//   final PastController productController = Get.put(PastController());
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
//               if (pastController.rxisLoading.value)
//                 return Center(child: CircularProgressIndicator());
//               else
//                 return GridView.builder(
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       mainAxisSpacing: 10,
//                       crossAxisSpacing: 10,
//                       childAspectRatio: 1 / 1.5),
//                   itemCount: pastController.rxpastDataList.length,
//                   itemBuilder: (context, i) =>
//                       Text(pastController.rxpastDataList[i].name),
//                 );
//             }),
//           )
//         ],
//       ),
//     );
//   }
// }
