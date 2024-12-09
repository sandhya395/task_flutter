import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class FirestoreDatabase extends StatelessWidget {
  FirestoreDatabase({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();

  final mobileController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Name",
              ),
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
            TextFormField(
              controller: mobileController,
              decoration: InputDecoration(
                hintText: "Mobile",
              ),
            ),
            ElevatedButton(
              onPressed: (){
                CollectionReference collRef = FirebaseFirestore.instance.collection("data");
                collRef.add({
                  "name": nameController.text,
                  "email": emailController.text,
                  "mobile": mobileController.text,
                });
              },
              child: const Text("Add Client"),
            ),
          ],
        ),
      ),
    );
  }
}