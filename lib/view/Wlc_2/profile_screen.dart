import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {


  ProfileScreen({Key? key, required this.password, required this.email, required this. id,
    // required this.password, required this.email,
  })
      : super(key: key);
  final String password;
  final String email;
  final String id;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void initState() {
    super.initState();
  }

  // get showImagePickerOption => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          "Profile ",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              "assets/icons/plus-sign-logo-template-medical-healthcare-hospital-icon-vector.jpg",
              height: 1000,
              width: 150,
            ),
           Column(children: [
             SizedBox(height: 40,),
             Text("password  ====>   ${widget.password}"),
             Text("email   ===>    ${widget.email}"),
             Text("id   ===>    ${widget.id}"),
           ],),
            Positioned(
                bottom: 240,
                right: -13,
                child: IconButton(
                    onPressed: () {
                      showImagePickerOption;
                    },
                    icon: Icon(Icons.add_a_photo)))
          ],
        ),
      ),
    );
  }
}

showImagePickerOption(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          child: Row(
            children: [
              InkWell(
                onTap: () {},
                child: const SizedBox(
                  child: Column(
                    children: [
                      Icon(Icons.image),
                      Text("Gallery"),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const SizedBox(
                  child: Column(
                    children: [
                      Icon(Icons.camera),
                      Text("Camera"),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      });
}
