
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../getx_controller/getx_controller_2.dart';
class UiScreen2 extends StatelessWidget {
   UiScreen2({Key? key}) : super(key: key);

  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      elevation: 0,
      leading: Icon(
        Icons.arrow_back_ios,size: 21,
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.shopping_cart,size: 21,
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
              Expanded(
                child: Text(
                  'Learn with pradeep',
                  style: TextStyle(
                      fontFamily: 'avenir',
                      fontSize: 32,
                      fontWeight: FontWeight.w900),
                ),
              ),
              IconButton(
                  icon: Icon(Icons.view_list_rounded), onPressed: () {}),
              IconButton(icon: Icon(Icons.grid_view), onPressed: () {}),
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
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1 / 5.6),
                  itemCount: productController.productList.length,
                  itemBuilder: (context, i) =>
                     Container(
                       color: Colors.grey,
                       child: Column(
                         children: [
                           Text(productController.productList[i].apiFeaturedImage),
                           Text(productController.productList[i].name),
                           Text(productController.productList[i].price),
                           Text(productController.productList[i].description),

                         ],
                       ),
                     ),
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
