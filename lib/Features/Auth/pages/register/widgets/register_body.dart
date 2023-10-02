import 'package:ecommers/Features/Auth/pages/login/presentation/login_view.dart';
import 'package:ecommers/Features/Auth/pages/manger/login_cubit.dart';
import 'package:ecommers/core/utils/assets_data.dart';
import 'package:ecommers/core/utils/components.dart';
import 'package:ecommers/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class RegisterBody extends StatelessWidget {
  // const RegisterBody({super.key});
  var emailCont = TextEditingController();
  var passCont = TextEditingController();
  var nameCont = TextEditingController();
  var mobileCont = TextEditingController();

  RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Image(
            image: const AssetImage(AssetsData.logo),
            height: SizeConfig.screenHeight! * .20,
          ),
          const SizedBox(
            height: 20,
          ),
          customTextFormedFiled(
              controller: nameCont,
              hintText: "name",
              type: TextInputType.name,
              preicon: Icons.person_2_outlined),
          const SizedBox(
            height: 10,
          ),
          customTextFormedFiled(
              controller: emailCont,
              hintText: "email",
              type: TextInputType.emailAddress,
              preicon: Icons.email_outlined),
          const SizedBox(
            height: 10,
          ),
          customTextFormedFiled(
              controller: passCont,
              hintText: "password",
              type: TextInputType.text,
              preicon: Icons.lock,
              sufficon: LoginCubit.get(context).password,
              sufFunction: () {
                LoginCubit.get(context).changePasswordIcon();
              },
              obscureText: LoginCubit.get(context).ispassword),
          const SizedBox(
            height: 10,
          ),
          customTextFormedFiled(
              controller: mobileCont,
              hintText: "phone",
              type: TextInputType.number,
              preicon: Icons.phone),
          const SizedBox(
            height: 15,
          ),
          defaultButton(
              fun: () {
                LoginCubit.get(context).createUser(
                    email: emailCont.text,
                    password: passCont.text,
                    name: nameCont.text,
                    phone: mobileCont.text);
              },
              text: "Register"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(" you are Member ?"),
              TextButton(
                  onPressed: () {
                    Get.to(() => const Login(),
                        transition: Transition.leftToRight);
                  },
                  child: const Text("Login Now!")),
            ],
          ),
        ],
      ),
    );
  }
}
