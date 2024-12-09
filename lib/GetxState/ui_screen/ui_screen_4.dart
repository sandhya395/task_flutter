import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task_design/GetxState/getx_controller/getx_controller_5.dart';


import '../getx_controller/getx_controller_2.dart';
import '../model_class/get_model_4.dart';
class UiScreen4 extends StatelessWidget {
  UiScreen4({Key? key}) : super(key: key);

  final ProductController productController = Get.put(ProductController());
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  // GetController getController = Get.put(GetController());

  // Rx<PaastData> paastData = PaastData().obs;
  // var isLoading = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios, size: 21,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart, size: 21,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    'Learn with pradeep',
                    style: TextStyle(
                        fontFamily: 'avenir',
                        fontSize: 32,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                IconButton(
                    icon: const Icon(Icons.view_list_rounded), onPressed: () {}),
                IconButton(icon: const Icon(Icons.grid_view), onPressed: () {}),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              if (productController.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: titleController,
                        decoration: InputDecoration(hintText: "Title"),
                      ),
                      TextField(
                        controller: bodyController,
                        decoration: InputDecoration(hintText: "Body"),
                      ),
                      GestureDetector(
                        onTap: () {
                          productController.postProducts();
                        },
                        child: Container(
                          child: Text("Create Post"),
                        ),
                      ),
                    ],
                  ),
                );
              }
            }),
          )
        ],
      ),
    );
  }
}
//   void postProducts() async {
//     try {
//       isLoading(true);
//       var paastDatas = await RemoteServices.postProducts(1);
//       if (paastDatas != null) {
//         paastData.value = paastDatas;
//       }
//     } finally {
//       isLoading(false);
//     }
//   }
// }
