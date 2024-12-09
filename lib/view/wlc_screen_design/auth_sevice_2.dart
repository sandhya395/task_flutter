import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

// class AuthService {
//   SignInWithGoogle()async{
//     final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
//
//     final GoogleSignInAuthentication gAuth; await gUser!.authentication;
//
//     final credential = GoogleAuthProvider.credential(
//       accessToken: gAuth.accessToken,
//       idToken: gAuth.idToken,
//     );
//     return await FirebaseAuth.instance.signInWithCredential(credential);
//   }
// }

class AuthSevice2{
  final _auth = FirebaseAuth.instance;

  Future<UserCredential?> loginWithGoogle()async{
    try{
      final googleUser = await GoogleSignIn().signIn();
      final googleAuth =await googleUser?.authentication;
      final cred = GoogleAuthProvider.credential(idToken: googleAuth?.idToken,accessToken: googleAuth?.accessToken);
    return await _auth.signInWithCredential(cred);
    }catch(e){
    print("error in google login -===> $e");
    }
    return null;
  }
}

//