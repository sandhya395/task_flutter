// // import 'package:get/state_manager.dart';
// // import 'package:http/http.dart' as http;
// //
// // import '../model_class/get_model_2.dart';
// // import '../model_class/get_model_3.dart';
// // import 'getx_controller_1.dart';
// //
// // class PostDataController extends GetxController {
// //   var islodding2 = true.obs;
// //   var productlist2 = <PostData>[].obs;
// //
// //   @override
// //   void onInit() {
// //     fetchpostData();
// //     super.onInit();
// //   }
// //
// //   void fetchpostData() async {
// //     try {
// //       productlist2(true);
// //       var products = await GemoteServices.fetchpostData();
// //       if (products != null) {
// //
// //         productlist2.value = PostData;
// //       }
// //     } finally {
// //       productlist2(false);
// //     }
// //   }
// // }
// //
// // class GemoteServices {
// //   static var client = http.Client();
// //
// //   static Future<List<PostData>?> fetchpostData() async {
// //     var response = await client.get(Uri.parse(
// //         'https://fakestoreapi.com/products'));
// //     if (response.statusCode == 200) {
// //       var jsonString = response.body;
// //       return postDataFromJson(jsonString);
// //     } else {
// //       //show error message
// //       return null;
// //     }
// //   }
// // }
//
// import 'package:get/state_manager.dart';
// import 'package:http/http.dart' as http;
//
// import '../model_class/get_model_2.dart';
//
// class PostController extends GetxController {
//   RxBool RxisLoading = true.obs;
//   // RxList<> RxpastDataList = <>[].obs;