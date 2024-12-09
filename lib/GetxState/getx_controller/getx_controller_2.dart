import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:test_task_design/GetxState/model_class/get_model_2.dart';
import 'package:test_task_design/GetxState/model_class/get_model_4.dart';


TextEditingController titleController = TextEditingController();
TextEditingController bodyController = TextEditingController();
class ProductController extends GetxController {
  var isLoading = true.obs;
  RxList<Product> productList = <Product>[].obs;
  Rx<PaastData> paastData = PaastData().obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
  void postProducts() async {
    try {
      isLoading(true);
      var paastDatas = await RemoteServices.postProducts(1);
      if (paastDatas != null) {
        paastData.value = paastDatas;
      }
    } finally {
      isLoading(false);
    }
  }
}


class RemoteServices {
  static var client = http.Client();

  static Future<List<Product>?> fetchProducts() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  static Future<PaastData?> postProducts(int id) async {
    print("9069057");
    var response = await http.post(Uri.parse(
        'https://dummyjson.com/posts/$id'),
        body: {
        "id": titleController.text,
        "title": bodyController.text,
        "userId": 1,
        }
        );
    print("response --==--==-=-> $response");
    // );
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return pastDataFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}