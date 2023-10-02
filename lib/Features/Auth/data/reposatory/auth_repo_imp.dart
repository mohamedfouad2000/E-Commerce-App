// import 'package:firebase_auth/firebase_auth.dart';
import 'package:ecommers/Features/Auth/domain/reposatory/auth_repo.dart';
// import 'package:google_sign_in/google_sign_in.dart';

class AuthRepoImp extends AuthRepo {
  @override
  Future<void> completeInfo(
      {required String name, required String adress, required num phone}) {
    throw UnimplementedError();
  }

  @override
  Future<void> loginwithGoogle() async {
    // import 'package:google_sign_in/google_sign_in.dart';

    // Future<UserCredential> signInWithGoogle() async {
    //   // Trigger the authentication flow
    //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    //   // Obtain the auth details from the request
    //   final GoogleSignInAuthentication? googleAuth =
    //       await googleUser?.authentication;

    //   // Create a new credential
    //   final credential = GoogleAuthProvider.credential(
    //     accessToken: googleAuth?.accessToken,
    //     idToken: googleAuth?.idToken,
    //   );

    //   // Once signed in, return the UserCredential
    //   return await FirebaseAuth.instance.signInWithCredential(credential);
    // }

    throw UnimplementedError();
  }

  @override
  Future<void> loginwithface() {
    throw UnimplementedError();
  }
}
