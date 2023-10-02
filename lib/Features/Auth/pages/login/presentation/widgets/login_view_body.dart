import 'package:ecommers/Features/Auth/pages/manger/login_cubit.dart';
import 'package:ecommers/Features/Auth/pages/register/widgets/register.dart';
import 'package:ecommers/core/utils/components.dart';
import 'package:flutter/material.dart';
import 'package:ecommers/core/utils/assets_data.dart';
import 'package:ecommers/core/utils/size_config.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class LoginViewBody extends StatelessWidget {
  // const LoginViewBody({super.key});
  var emailCont = TextEditingController();
  var passCont = TextEditingController();

  LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Form(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Image(
              image: const AssetImage(AssetsData.logo),
              height: SizeConfig.screenHeight! * .20,
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            SizedBox(
              height: SizeConfig.screenHeight! * .16,
            ),
            customTextFormedFiled(
                controller: emailCont,
                hintText: "email",
                type: TextInputType.emailAddress,
                preicon: Icons.email_outlined),
            const SizedBox(
              height: 15,
            ),
            customTextFormedFiled(
                controller: passCont,
                hintText: "password",
                type: TextInputType.visiblePassword,
                preicon: Icons.lock,
                sufficon: LoginCubit.get(context).password,
                sufFunction: () {
                  LoginCubit.get(context).changePasswordIcon();
                },
                obscureText: LoginCubit.get(context).ispassword),
            const SizedBox(
              height: 15,
            ),
            defaultButton(fun: () {}, text: "Log in"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Not a Member ?"),
                TextButton(
                    onPressed: () {
                      Get.to(() => const Register(),
                          transition: Transition.fade);
                    },
                    child: const Text("Register Here!")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Future<void> signInWithGoogle() async {
// // import 'package:google_sign_in/google_sign_in.dart';

//   Future<UserCredential> signInWithGoogle() async {
//     // Trigger the authentication flow
//     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//     // Obtain the auth details from the request
//     final GoogleSignInAuthentication? googleAuth =
//         await googleUser?.authentication;

//     // Create a new credential
//     final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth?.accessToken,
//       idToken: googleAuth?.idToken,
//     );

//     // Once signed in, return the UserCredential
//     return await FirebaseAuth.instance.signInWithCredential(credential);
//   }
// }
