import 'package:flutter/material.dart';

class FlutterThemesScreen extends StatelessWidget {
  const FlutterThemesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Themes Examples",style: Theme.of(context).textTheme.bodyLarge,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Test",
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      ),
      floatingActionButton: Theme(
        data: ThemeData(
          // colorScheme: ColorScheme.fromSeed(
          //   seedColor: Colors.pink,
          //   brightness: Brightness.dark,
          // ),
          hintColor: Colors.blue,
        ),
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
