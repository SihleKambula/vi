import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  String build() {
    return '';
  }

  //Method to login
  Future<void> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser =
        await GoogleSignIn().signIn(); // Trigger the authentication flow
    final GoogleSignInAuthentication? googleAuth = await googleUser
        ?.authentication; // Obtain the auth details from the request
    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken); //Create a new credential
    final userCred =
        await FirebaseAuth.instance.signInWithCredential(credential);
    state = '$userCred';
  }

  void signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
