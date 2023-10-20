import 'package:ecommers/Features/Auth/pages/manger/login_cubit.dart';
import 'package:ecommers/Features/Auth/pages/manger/login_states.dart';
import 'package:ecommers/Features/Auth/pages/register/widgets/register_body.dart';
import 'package:ecommers/Features/home/presentation/home.dart';
import 'package:ecommers/core/constans/const.dart';
import 'package:ecommers/core/utils/cash_helper.dart';
import 'package:ecommers/core/utils/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    var emailCont = TextEditingController();
    var passCont = TextEditingController();
    var nameCont = TextEditingController();
    var mobileCont = TextEditingController();
    return BlocProvider(
      create: (BuildContext context) {
        return LoginCubit();
      },
      child: BlocConsumer<LoginCubit, LoginStaes>(
        builder: (BuildContext context, state) {
          return Scaffold(
            body: SingleChildScrollView(
                child: RegisterBody(
                    emailCont: emailCont,
                    mobileCont: mobileCont,
                    nameCont: nameCont,
                    passCont: passCont)),
          );
        },
        listener: (BuildContext context, Object? state) {
          if (state is SuccRegisterUser) {
            UID = state.Uid;
            CasheHelber.setDataShared(key: "Uid", value: state.Uid);

            Get.to(() => const HomeView());
          } else if (state is eroorRegisterUser) {
            showToast(msg: state.eroor, n: SelectToast.eroor);
          }
        },
      ),
    );
  }
}
