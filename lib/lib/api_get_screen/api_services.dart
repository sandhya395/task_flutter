//
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:test_task_design/get_api/fact_model.dart';
//
//
// class ProductListScreen extends StatefulWidget {
// @override
// _ProductListScreenState createState() => ProductListScreenState();
// }
//
// class _ProductListScreenState extends State<ProductListScreen> {
// List<GetData> products = [];
//
// @override
// void initState() {
// super.initState();
// fetchProducts();
// }
//
// Future<void> fetchProducts() async {
// // you can replace your api link with this link
// final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/'));
// if (response.statusCode == 200) {
// List<dynamic> jsonData = json.decode(response.body);
// setState(() {
// products = jsonData.map((data) => GetData.fromJson(data)).toList();
// });
// } else {
// // Handle error if needed
// }
// }
//
// @override
// Widget build(BuildContext context) {
// return Scaffold(
// appBar: AppBar(
// title: Text('Product List'),
// ),
// body: ListView.builder(
// // this give th length of item
// itemCount: products.length,
// itemBuilder: (context, index) {
// return Text(GetData[index].title);
// // return ProductCard(product: products[index]);
// },
// ),
// );
// }
// }