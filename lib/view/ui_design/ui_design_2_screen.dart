import 'package:flutter/material.dart';

class UiDesign2Screen extends StatelessWidget {
  const UiDesign2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 540,
            width: 500,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(29.0),
                child: Container(height: 50,
                  width: 50,
                  child: Icon(Icons.tag_faces_sharp,color: Colors.white,size: 30,),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.red),),
              ),
              Text("Sign in to your account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
           Padding(
             padding: const EdgeInsets.only(top: 18,left: 8,right: 8),
             child: TextFormField(decoration: InputDecoration(hintText: "uijkn",labelText: "email address",labelStyle: TextStyle(color: Colors.black45),border: OutlineInputBorder(borderRadius: BorderRadius.all( Radius.circular(30)))),),
           ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(decoration: InputDecoration(hintText: "uijkn",labelText: "password",labelStyle: TextStyle(color: Colors.black45),border: OutlineInputBorder(borderRadius: BorderRadius.all( Radius.circular(30)))),),
              ),
              Container(
                height: 50,
                width: 327,
                child: Center(child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 17),),),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.red),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 7,top: 20,left: 7,bottom: 20),
                child: Text("----------------------  or login with  ---------------------",style: TextStyle(fontSize: 16),),
              ),
              Container(
                height: 50,
                width: 327,
                child: Row(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 39),
                      child: Image.asset("assets/images/download (6).jpeg",height: 20,)
                    ),
                    Text("Continue with google",style: TextStyle(color: Colors.white,fontSize: 17),),
                  ],
                ),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.black12),
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                width: 327,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 39),
                      child: Icon(Icons.apple),
                    ),
                    Text("Continue with Apple",style: TextStyle(color: Colors.white,fontSize: 17),),
                  ],
                ),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.black12),
              ),
            ],),
          ),
        ),
      ),
    );
  }
}
