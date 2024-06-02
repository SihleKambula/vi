import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vi/auth/auth/model/user_model.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  User? build() {
    return FirebaseAuth.instance.currentUser;
  }

  //Method to login
  Future<void> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    //Create a new credential
    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

    //Login with user cred
    await FirebaseAuth.instance.signInWithCredential(credential);

    state = FirebaseAuth.instance.currentUser;
    // print(state?.displayName);
  }

  void signOut() async {
    await FirebaseAuth.instance.signOut();
    state = FirebaseAuth.instance.currentUser;
  }
}
