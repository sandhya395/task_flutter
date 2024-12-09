import 'dart:convert';

import 'package:flutter/material.dart';

class Wlc3Screen extends StatefulWidget {
  const Wlc3Screen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Wlc3Screen> createState() => _Wlc3ScreenState();
}

class _Wlc3ScreenState extends State<Wlc3Screen> {

  List<dynamic> _data = [];

  get http => null;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

      if (response.statusCode == 200) {
        setState(() {
          _data = jsonDecode(response.body);
        });
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      print(error);
    }
  }

  Future<void> _createData() async {
    try {
      final response = await http.post(
          Uri.parse('https://jsonplaceholder.typicode.com/posts'),
          // headers: <String, String>{
          //   'Content-Type': 'application/json; charset=UTF-8',
          // },
          body: jsonEncode(<String, dynamic>{
            'title': 'Flutter HTTP CRUD',
            'body': 'This is a blog post about HTTP CRUD methods in Flutter',
            'userId': 1,
          }));

      if (response.statusCode == 201) {
      } else {
        throw Exception('Failed to create data');
      }
    } catch (error) {
      print(error);
    }
  }

  Future<void> _updateData(int id) async {
    try {
      final response = await http.put(
          Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, dynamic>{
            'title': 'Flutter HTTP CRUD',
            'body':
            'This is an updated blog post about HTTP CRUD methods in Flutter',
          }));

      if (response.statusCode == 200) {
        _fetchData();
      } else {
        throw Exception('Failed to update data');
      }
    } catch (error) {
      print(error);
    }
  }

  Future<void> _deleteData(int id) async {
    try {
      final response = await http
          .delete(Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'));

      if (response.statusCode == 200) {
        _fetchData();
      } else {
        throw Exception('Failed to delete data');
      }
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (BuildContext context, int index) {
          final data = _data[index];
          return ListTile(
            title: Text(data['title']),
            subtitle: Text(data['body']),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () => _updateData(data['id']),
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _deleteData(data['id']),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _createData,
        tooltip: 'Create',
        child: Icon(Icons.add),
      ),
    );
  }
}
