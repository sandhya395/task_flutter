import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:test_task_design/get_api/PostModel/post_model.dart';
class PostApi2 extends StatefulWidget {
  const PostApi2({Key? key}) : super(key: key);

  @override
  State<PostApi2> createState() => _PostApi2State();
}

class _PostApi2State extends State<PostApi2> {

  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();



  Future<void> sendPostRequest() async {
    var response = await http.post("https://jsonplaceholder.typicode.com/posts" as Uri,
        // headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "title": titleController.text,
          "body": bodyController.text,
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter POST Request Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: InputDecoration(hintText: "Title"),
            ),
            TextField(
              controller: bodyController,
              decoration: InputDecoration(hintText: "Body"),
            ),
         GestureDetector(
           onTap: sendPostRequest,
           child: Container(

             child: Text("Create Post"),
           ),
         ),
          ],
        ),
      ),
    );
  }
}
