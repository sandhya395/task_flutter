import 'package:flutter/material.dart';

class SliverAppBarBuilderScreen extends StatefulWidget {
  const SliverAppBarBuilderScreen({Key? key}) : super(key: key);

  @override
  State<SliverAppBarBuilderScreen> createState() =>
      _SliverAppBarBuilderScreenState();
}

class _SliverAppBarBuilderScreenState extends State<SliverAppBarBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        backgroundColor: Colors.grey,
        floating: true,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            "assets/images/squirrel-animal-cute-rodents-47547.jpeg",
            fit: BoxFit.cover,
            height: 20,
          ),
        ),
        expandedHeight: 150,
        title: Text(
          "My Appbar",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 27,
              color: Colors.white,
              fontStyle: FontStyle.italic),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 29,
        ),
        actions: [
          Icon(
            Icons.settings,
            color: Colors.white,
            size: 29,
          ),
          SizedBox(
            width: 12,
          ),
          // SliverGrid(
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 4,
          //   ) ,
          //   delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          //     return  Container(
          //         color: _randomPaint(index),
          //         height: 150.0
          //     );
          //   }),
          // )
        ],
      ),
          SliverFixedExtentList(
            itemExtent: 75,
            delegate: SliverChildListDelegate([
              Container(color: Colors.blue,child: Text('Sliver appbar builder', style: TextStyle(fontSize: 28),),),

              Container(color: Colors.grey,child: Text('Sliver appbar builder', style: TextStyle(fontSize: 28),),),
              Container(color: Colors.black26,child: Text('Sliver appbar builder', style: TextStyle(fontSize: 28),),),
              Container(color: Colors.blue,child: Text('Sliver appbar builder', style: TextStyle(fontSize: 28),),),
              Container(color: Colors.grey,child: Text('Sliver appbar builder', style: TextStyle(fontSize: 28),),),
              Container(color: Colors.black26),

            ]),
          ),

          SliverToBoxAdapter(
            child: Container(
              color: Colors.orange,
              padding: const EdgeInsets.all(16.0),
              child:
              Text('Sliver appbar builder', style: TextStyle(fontSize: 28)),
            ),
          ),
    ]));
  }
}
// Color _randomPaint(int index) {
//   if (index % 3 == 0) {
//     return Colors.white;
//   } else if (index % 3 == 1) {
//     return Colors.grey;
//   }
//   return Colors.black;
// }
