import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/state_manager.dart';
 import 'package:http/http.dart' as http;

 import '../model_class/get_model_3.dart';

  class PostDataController extends GetxController {
   RxBool islodding2 = true.obs;
   RxList<PostData> productlist2 = <PostData>[].obs;

   @override
   void onInit() {
     fetchpostData();
     super.onInit();
   }

   void fetchpostData() async {
     try {
       productlist2(true as List<PostData>?);
       var products = await GemoteServices.fetchpostData();
       if (products != null) {

         productlist2.value = PostData as List<PostData>;
       }
     } finally {
       productlist2(false as List<PostData>?);
     }
   }
 }

 class GemoteServices {
   static var client = http.Client();

   static Future<String?> fetchpostData() async {
     var response = await client.get(Uri.parse(
         'https://fakestoreapi.com/products'));
     if (response.statusCode == 200) {
       var jsonString = response.body;
       return pastDataToJson(jsonString as List<PostData>);
     } else {
       //show error message
       return null;
     }
   }
 }
