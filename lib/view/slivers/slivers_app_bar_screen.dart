import 'package:flutter/material.dart';

class SliversAppBarScreen extends StatefulWidget {
  const SliversAppBarScreen({Key? key}) : super(key: key);

  @override
  State<SliversAppBarScreen> createState() => _SliversAppBarScreenState();
}

class _SliversAppBarScreenState extends State<SliversAppBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("Sliver App bar"),
            backgroundColor: Colors.teal,
            expandedHeight: 100.0,
            floating: true,
            pinned: false,
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return new Container(color: _randomPaint(index), height: 150.0);
            }),
          ),
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(
          //         color: index.isOdd ? Colors.white : Colors.black12,
          //         height: 100.0,
          //         child: Center(
          //           child:
          //               Text('$index', textScaler: const TextScaler.linear(5)),
          //         ),
          //       );
          //     },
          //     childCount: 20,
          //   ),
          // )
        ],
      ),
    );
  }
}

Color _randomPaint(int index) {
  if (index % 3 == 0) {
    return Colors.orange;
  } else if (index % 3 == 1) {
    return Colors.blue;
  }
  return Colors.red;
}
