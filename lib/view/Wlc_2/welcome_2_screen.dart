import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_task_design/view/Wlc_2/profile_screen.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../get_api/PostModel/post_model.dart';

class Welcome2Screen extends StatefulWidget {
  const Welcome2Screen({Key? key}) : super(key: key);

  @override
  State<Welcome2Screen> createState() => _Welcome2ScreenState();
}

class _Welcome2ScreenState extends State<Welcome2Screen> {
  TextEditingController  emailText = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController idController = TextEditingController();
  PastData postData = PastData();

// String _passwordError;
  var passText = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  bool passToggle = true;

  get id => null;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {}
  }

  // String? _validateEmail(value) {
  //   if (value!.isEmpty) {
  //     return "please enter an email";
  //   }
  //   RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  //   if (!emailRegExp.hasMatch(value)) {
  //     return "Plese enter a valid email";
  //   }
  //   return null;
  // }

//   Future<void> sendPostRequest() async {
//     var response = await http.post("https://reqres.in/#support-heading" as Uri,
//
//         body: jsonEncode({
//           "name": " ",
//           "job": "",
//         }));
//
//
//     if (response.statusCode == 201) {
//   Scaffold.of(context).showSnackBar(SnackBar(
//   content: Text("Post created successfully!"),
//   ));
//   } else {
//   Scaffold.of(context).showSnackBar(SnackBar(
//   content: Text("Failed to create post!"),
//   ));
//   }
// }
  Future<void> sendPostRequest() async {
    var response =
        await http.post(Uri.parse("https://reqres.in/api/users/"),
            body: jsonEncode({
              "name": emailText.text,
              "job": _passwordController.text,
            }));
    if (response.statusCode == 200 || response.statusCode == 201) {
      var jsonData = json.decode(response.body);
      print("response.body =======> ${response.body}");
      print("jsonData ======> $jsonData");
      setState(() {
        postData =  PastData.fromJson(jsonData);
      });

      print("postData ====> ${postData.id}");
      print("postData ====> ${postData.createdAt}");
    } else {
      // Handle error if needed
    }
  }

  Future<void> sendPutRequest() async {
    print("id ====> ${postData.id}");
    var response =
    await http.post(Uri.parse("https://reqres.in/api/users/${postData.id}"),
        body: jsonEncode({
          "name": emailText.text,
          "job": _passwordController.text,
        }));
    if (response.statusCode == 200 || response.statusCode == 201) {
      var jsonData = json.decode(response.body);
      print("response.body =======> ${response.body}");
      print("jsonData ======> $jsonData");


    } else {
      // Handle error if needed
    }
  }

  Future<void> sendDeleteRequest() async {
    print("id ====> ${postData.id}");
    var response =
    await http.post(Uri.parse("https://jsonplaceholder.typicode.com/albums/$id"),
        // body: jsonEncode({
        //   "name": emailText.text,
        //   "job": _passwordController.text,
        // })
        );
    if (response.statusCode == 200 || response.statusCode == 201) {
      var jsonData = json.decode(response.body);
      print("response.body =======> ${response.body}");
      print("jsonData ======> $jsonData");


    } else {

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Welcome screen",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/avatar-15.png',
                  height: 80,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  // validator: _validateEmail,
                  controller: emailText,
                  decoration: InputDecoration(
                    hintText: "Enter name here...",

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),

                    // suffixText: "E-mail exists",
                    // suffixIcon: IconButton(
                    //   icon: Icon(
                    //     Icons.remove_red_eye,
                    //     color: Colors.orange,
                    //   ),
                    //   onPressed: () {},
                    // ),
                    prefixIcon: Icon(
                      Icons.perm_identity,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black)),
                  ),
                ),
                Container(
                  height: 11,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter your password";
                    }
                    return null;
                  },
                  controller: _passwordController,
                  obscureText: passToggle,
                  // obscuringCharacter: "*",
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(
                          passToggle ? Icons.visibility_off : Icons.visibility),
                    ),
                    // suffixIcon: IconButton(
                    //   icon: Icon(
                    //     Icons.remove_red_eye,
                    //     color: Colors.orange,
                    //   ),
                    //   onPressed: () {
                    //     setState(() {
                    //       _secureText = !_secureText;
                    //     });
                    //   },
                    // ),
                    hintText: "Enter job here...",

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: idController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    prefixIcon: Icon(Icons.email_sharp),

                    // suffixIcon: IconButton(
                    //   icon: Icon(
                    //     Icons.remove_red_eye,
                    //     color: Colors.orange,
                    //   ),
                    //   onPressed: () {
                    //     setState(() {
                    //       _secureText = !_secureText;
                    //     });
                    //   },
                    // ),
                    hintText: "Enter id here...",

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black)),
                  ),
                ),
                Container(
                  height: 11,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        await sendPostRequest();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProfileScreen(
                                  password: _passwordController.text,
                                  email: emailText.text,
                              id:idController.text,
                                )));
                      },
                      child: Text("Submit"),
                      style: ButtonStyle(),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        await sendPutRequest();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProfileScreen(password: '', email: '', id: '',
                              // password: _passwordController.text,
                              // email: emailText.text,
                              // id:idController.text,
                            )));
                      },
                      child: Text("Update"),
                      style: ButtonStyle(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
