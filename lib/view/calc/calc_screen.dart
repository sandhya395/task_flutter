import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CalcScreen extends StatefulWidget {
  const CalcScreen({super.key});

  @override
  State<CalcScreen> createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  String? title;

  int? id;
  int? userId;
  bool? completed;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 0), () {
      // abc();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children:[ Center(
              child: Container(
                color: Colors.black45,
                child: Column(
                  children: [
                    Text("Title: $title"),


                   Text("Id: $id"),
                    Text("UserId: $userId"),
                    Text("Completed: $completed"),
                  ],
                ),
              ),
            ),

            ]
        ),
      ),
    );
  }

  void abc() async {
    var a = await fetchAlbum();
    var b = a.body;
    var album = Album.fromJson(json.decode(b));

    setState(() {
      title = album.title;

      id = album.id;
      userId = album.userId;
      completed = album.completed;
    });
  }

  Future<http.Response> fetchAlbum() async {
    return await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  }

}

class Album {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Album({this.userId, this.id, this.title, this.completed});

  Album.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['completed'] = completed;
    return data;
  }
}