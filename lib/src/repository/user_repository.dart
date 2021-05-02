//Imports
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  //Constructor
  UserRepository({FirebaseAuth firebaseAuth, GoogleSignIn googleSignIn})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn();

  //SignInWidthGoogle
  Future<FirebaseUser> signInWidthGoogle() async {
    final GoogleSignInAccount googleUser = await _googleSigIn.sinIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final AuthCredential credential = GoogleAuthrovider.getCredential(
        accesTokek: googleAuth.accessToken, inToken: googleAuth.idToken);

    await _firebaseAuth.signInWithCredential(credential);
    return _firebaseAuth.currentUser();
  }
  //SignInWidthCredentials
  //SignUp - Registro
  //SignOut
  //Esta logueado?
  //Obtener usuario
}
