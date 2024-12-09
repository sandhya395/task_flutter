import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:test_task_design/GetxState/model_class/get_model_2.dart';
import 'package:test_task_design/GetxState/model_class/get_model_4.dart';


class GetController extends GetxController {
  RxBool isLoading = true.obs;
  List<Product> productList = <Product>[].obs;
  Rx<PaastData> paastData = PaastData().obs;

  @override
  void onInit() {
    super.onInit();
    putProducts();
  }

  void putProducts() async {
    try {
      isLoading(true);
      var paastDatas = await RemoteServices.putProducts();
      if (paastDatas != null) {
        // paastData.value = paastDatas;
      }
    } finally {
      isLoading(false);
    }
  }
}

class RemoteServices {
  static var client = http.Client();

  // static Future<List<Product>?> fetchProducts() async {
  //   var response = await client.get(Uri.parse(
  //       'https://reqres.in/api/users/2'));
  //   if (response.statusCode == 200) {
  //     var jsonString = response.body;
  //     return productFromJson(jsonString);
  //   } else {
  //
  //     return null;
  //   }
  // }

  static Future<List<Product>?> putProducts() async {
    var response = await client.put(Uri.parse(
        'https://reqres.in/api/users/2'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {

      return null;
    }
  }
}