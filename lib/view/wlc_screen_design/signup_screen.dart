import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_task_design/view/wlc_screen_design/welcome_screen.dart';

class SignupScreen extends StatelessWidget {
   SignupScreen({Key? key}) : super(key: key);
   List<String> images = [
    "assets/images/related-section-image-baaghi-2-2.jpg",
    "assets/images/related-section-image-mission-mangal.webp",
    "assets/images/related-section-image-sanju-10.webp",
     "assets/images/jagaajasoos_poster.jpg",
     "assets/images/tubelight_poster.jpg",
     "assets/images/dobara_poster.jpg",
  ];

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.grey,
      //   title: Text(
      //     "Movie Bar",
      //     style: TextStyle(
      //         fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
      //   ),
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home,
      //           color: Colors.black,
      //         ),
      //         label: "Home",
      //         backgroundColor: Colors.grey),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.search,
      //           color: Colors.black,
      //         ),
      //         label: 'Search',
      //         backgroundColor: Colors.grey),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.person,
      //         color: Colors.black,
      //       ),
      //       label: 'Profile',
      //       backgroundColor: Colors.grey,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.more_vert,
      //         color: Colors.black,
      //       ),
      //       label: 'More',
      //       backgroundColor: Colors.grey,
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40,right: 70),
                    child: Image.asset(
                      "assets/images/Working-cuate.png",
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            const Text(
              "Welcome Back",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const Text(
              "make it work,make it right,make it fast",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "User Name",
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Phone Number",
                      hintText: 'Enter Your Phone Number',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: 'Enter Your Password',
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                        onTap: (){},
                        child: Text("Forgotten Password?"))),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => WelcomeScreen()));
                    },
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.black,
                      ),
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Text("OR"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Text(
                          "Sign-in With Google",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text("Don't have account? Signup",style: TextStyle(fontWeight: FontWeight.bold ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
