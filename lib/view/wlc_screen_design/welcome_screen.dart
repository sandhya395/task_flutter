// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//
// import '../../config/app_color.dart';
// import '../../config/app_size.dart';
// import '../../config/app_string.dart';
// import 'home_screen.dart';
// import 'login_screen.dart';
//
// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white70,
//       body: Column(
//
//         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         // crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SizedBox(height: 80,),
//           Image.asset(
//             "assets/images/download (2).jpeg",
//             fit: BoxFit.cover,
//             // height: 400,
//             // width: 1000,
//           ),
//           SizedBox(height: 50,),
//           Text("Build Awesomeapps",style: TextStyle(fontSize: 25,color:Colors.white,fontWeight: FontWeight.bold)),
//           SizedBox(height: 10,),
//           Text("let's put your creativity on the devlopment highway",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,fontStyle: FontStyle.italic)),
//           // Text("A welcome page is typically the first screen your users see when they start a free trial of your product or download your app.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,fontStyle: FontStyle.italic),),
//           SizedBox(height: 40,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               GestureDetector(
//                 onTap: (){
//                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
//                 },
//                 child: Container(
//                   height: 50,
//                   width: 120,
//                   color: Colors.black,
//                   child: Center(child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: (){
//                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
//                 },
//                 child: Container(
//                   height: 50,
//                   width: 120,
//                   color: Colors.black,
//                   child: Center(child: Text("Signup",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),),
//                 ),
//               ),
//
//             ],
//           )
//         ],
//       ),
//     );
//
//     // body: Column(
//     //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     //   // crossAxisAlignment: CrossAxisAlignment.center,
//     //   children: [
//     //     Image.asset(
//     //       "assets/images/download (2).jpeg",
//     //       height: 300,
//     //       width: 500,
//     //     ),
//     //     reusableTextWidget(
//     //         AppString.buildAwesomeapps, FontWeight.w700, AppColor.blackColor),
//     //     reusableTextWidget(
//     //         AppString.letsputyourcreativityonthedevlopmenthighway,
//     //         FontWeight.w700,
//     //         AppColor.redColor),
//     //     Row(
//     //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     //       crossAxisAlignment: CrossAxisAlignment.center,
//     //       children: [
//     //         GestureDetector(
//     //           onTap: (){
//     //             Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
//     //           },
//     //           child: Container(
//     //             height: 40,
//     //             width: 100,
//     //             child:Center(
//     //               child:  Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
//     //             ),
//     //             color: Colors.cyan,
//     //           ),
//     //         ),
//     //         GestureDetector(
//     //           onTap: (){
//     //             Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
//     //           },
//     //           child: Container(
//     //             height: 40,
//     //             width: 100,
//     //             child:Center(
//     //               child:  Text("Signup",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
//     //             ),
//     //             color: Colors.grey,
//     //           ),
//     //         ),
//     //       ],
//     //     ),
//     // Row(
//     //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     //   crossAxisAlignment: CrossAxisAlignment.center,
//     //   children: [
//     //     reusableContainerWidget(AppSize.appsize20, AppSize.appsize20,
//     //         AppColor.redColor, BoxShape.rectangle),
//     //     reusableContainerWidget(AppSize.appsize19, AppSize.appsize19,
//     //         AppColor.yellowColor, BoxShape.circle),
//     //
//     //   ],
//     // ),
//     //       ],
//     //     ),
//     //   );
//     // }
//
//     // Widget reusableContainerWidget(
//     //     double width, double height, Color color, BoxShape shape) {
//     //   return Container(
//     //     width: width,
//     //     height: height,
//     //     decoration: BoxDecoration(
//     //       color: color,
//     //       border: Border.all(
//     //         color: AppColor.blackColor,
//     //         width: AppSize.appsize20,
//     //       ),
//     //       shape: shape,
//     //     ),
//     //   );
//     // }
//
// //   Widget reusableTextWidget(String text, FontWeight? fontWeight, Color? color) {
// //     return Text(
// //       text,
// //       style: TextStyle(
// //         fontSize: AppSize.appsize19,
// //         fontWeight: fontWeight,
// //         color: color,
// //       ),
// //     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:test_task_design/view/wlc_screen_design/signup_screen.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/Working-cuate.png",
                    width: MediaQuery.of(context).size.width / 1,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  "LOGIN DE VERGEN",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const Text(
                  "Login with your account with username",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
                          },
                          child: Container(
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupScreen()));
                          },
                          child: Container(
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black,
                            ),
                            child: const Center(
                              child: Text(
                                "Signup",
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
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
