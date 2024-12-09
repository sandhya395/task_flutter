import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:test_task_design/view/wlc_screen_design/auth_sevice_2.dart';
import 'package:test_task_design/view/wlc_screen_design/welcome_screen.dart';

TextEditingController nameController = TextEditingController();
TextEditingController phonenoController = TextEditingController();

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final _auth = AuthSevice2();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
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
                    padding: const EdgeInsets.only(top: 70),
                    child: Image.asset(
                      "assets/images/Working-cuate.png",
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
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
            const SizedBox(height: 20,),
            Column(
              children: [
                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "User Name",
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Phone Number",
                      hintText: 'Enter Your Phone Number',
                    ),
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.all(8.0),
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
                        child: const Text("Forgotten Password?"))),
                const SizedBox(
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
                const Text("OR"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: ()async{

                     await _auth.loginWithGoogle();


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
                const SizedBox(height: 10,),
                const Text("Don't have account? Signup",style: TextStyle(fontWeight: FontWeight.bold ),),
              ],
            ),
          ],
        ),
      ),

      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: TextField(
      //     decoration: InputDecoration(
      //       border: OutlineInputBorder(),
      //       labelText: 'User Name',
      //       hintText: 'Enter Your Name',
      //     ),
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: TextField(
      //     decoration: InputDecoration(
      //       border: OutlineInputBorder(),
      //       labelText: "Phone Number",
      //       hintText: 'Enter Your Phone Number',
      //     ),
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: TextField(
      //     decoration: InputDecoration(
      //       border: OutlineInputBorder(),
      //       labelText: "Phone Number",
      //       hintText: 'Enter Your Phone Number',
      //     ),
      //   ),
      // ),
      // SizedBox(height: 20,),
      // GestureDetector(
      //   onTap: (){
      //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => WelcomeScreen()));
      //   },
      //   child: Container(
      //     height: 50,
      //     width: 120,
      //     color: Colors.black,
      //     child: Center(child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),),
      //   ),
      // ),
      //   ],
      // ),
      // body: Column(
      //  crossAxisAlignment: CrossAxisAlignment.center,
      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Image.asset("assets/images/download (2).jpeg",
      //   height: 300,
      //   width: 500,
      //     ),
      // reusableTextFieldWidget(nameController, AppString.EnterName),
      // const SizedBox(height: AppSize.appsize12),
      // reusableTextFieldWidget(phonenoController, AppString.EnterEmail),
      //     Center(
      //       child: GestureDetector(
      //         onTap: (){
      //           Navigator.of(context).push(MaterialPageRoute(builder: (context) => WelcomeScreen()));
      //         },
      //         child: Container(
      //           height: 40,
      //           width: 100,
      //           child:Center(
      //             child:  Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      //           ),
      //           color: Colors.grey,
      //         ),
      //       ),
      //      ),
      //   ],
      // ),
    );
  }

  Widget reusableTextFieldWidget(
      TextEditingController controller, String hintText) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(hintText: hintText),
    );
  }
}
// GestureDetector(
// onTap: () {
// Navigator.of(context).push(MaterialPageRoute(builder: (context) => WelcomeScreen()));
// },
