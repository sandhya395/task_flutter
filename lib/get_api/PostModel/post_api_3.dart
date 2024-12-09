import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test_task_design/get_api/PostModel/post_model.dart';

class PostApi3 extends StatefulWidget {
  const PostApi3({Key? key}) : super(key: key);

  @override
  State<PostApi3> createState() => _PostApi3State();
}

class _PostApi3State extends State<PostApi3> {
  get http => null;


  Future<void> sendPostRequest() async {
    var response = await http.post("https://jsonplaceholder.typicode.com/posts" ,
        // headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "title":"Sandhya",
          "body": "xyz",
          "userId": 1,
        }));

    if (response.statusCode == 201) {
      print("Post created successfully!");
    } else {
      print ("Failed to create post!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



class Welcome {
  String title;
  String body;
  int userId;
  int id;

  Welcome({
    required this.title,
    required this.body,
    required this.userId,
    required this.id,
  });

}
