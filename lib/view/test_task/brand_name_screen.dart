import 'package:flutter/material.dart';

class BrandNameScreen extends StatefulWidget {
  const BrandNameScreen({Key? key}) : super(key: key);

  @override
  State<BrandNameScreen> createState() => _BrandNameScreenState();
}

class _BrandNameScreenState extends State<BrandNameScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          children: [
            Text("Brand name",style: TextStyle(fontSize: 28,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(backgroundImage: AssetImage("assets/images/download(1.1).png",),),
                CircleAvatar(backgroundImage:  AssetImage("assets/images/douload(1.2).png",),),
                CircleAvatar(backgroundImage:  AssetImage("assets/images/douload(1.3).png",),),
              ],
            ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  CircleAvatar(backgroundImage:  AssetImage("assets/images/douload(1.4).png",),),
                  CircleAvatar(backgroundImage:  AssetImage("assets/images/douload(1.4).png",),),
                  CircleAvatar(backgroundImage:  AssetImage("assets/images/douload(1.4).png",),),
        
                ],),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(backgroundImage:  AssetImage("assets/images/douload(1.4).png",),),
                CircleAvatar(backgroundImage:  AssetImage("assets/images/douload(1.4).png",),),
                CircleAvatar(backgroundImage:  AssetImage("assets/images/douload(1.4).png",),),
        
              ],),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(backgroundImage:  AssetImage("assets/images/douload(1.4).png",),),
                CircleAvatar(backgroundImage:  AssetImage("assets/images/douload(1.4).png",),),
                CircleAvatar(backgroundImage:  AssetImage("assets/images/douload(1.4).png",),),
        
              ],),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(backgroundImage:  AssetImage("assets/images/douload(1.4).png",),),
                CircleAvatar(backgroundImage:  AssetImage("assets/images/douload(1.4).png",),),
                CircleAvatar(backgroundImage:  AssetImage("assets/images/douload(1.4).png",),),
        
              ],)
        
        
        
        
        
          ],
        ),
      ),
    );
  }
}
