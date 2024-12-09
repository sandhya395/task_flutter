import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'auth_service.dart';
import 'package:flutter/material.dart';


class FirebaseServices{
  final auth = FirebaseAuth.instance;
  final googlsSignIn =GoogleSignIn();

  GoogleSignInAuthentication? get awiat => null;
  signInWithGoogle()async{
    try{
      final GoogleSignInAccount? googleSignInAccount = await googlsSignIn.signIn();
      if(googleSignInAccount != null){
        final GoogleSignInAuthentication? googleSignInAuthentication = awiat; googleSignInAccount.authentication;
        final AuthCredential authCredential =GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication?.accessToken,
          idToken:googleSignInAuthentication?.idToken,
        );
        await auth.signInWithCredential(authCredential);
      }
    }on FirebaseAuthException catch(e){
      print(e.toString());
    }
  }
}

// class AuthService{
// _signInWithGoogle()async{
//   final GoogleSignIn _googleSignIn = GoogleSignIn();
//   try{
//     final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
//  if(googleSignInAccount =)
//   }
// }
// }