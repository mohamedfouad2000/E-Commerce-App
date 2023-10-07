// import 'package:bloc_provider/bloc_provider.dart';
import 'package:ecommers/Features/Auth/pages/login/presentation/widgets/login_view_body.dart';
import 'package:ecommers/Features/Auth/pages/manger/login_cubit.dart';
import 'package:ecommers/Features/Auth/pages/manger/login_states.dart';
import 'package:ecommers/Features/admin/pages/adminhome/presentation/admin_home.dart';
import 'package:ecommers/Features/home/presentation/home.dart';
import 'package:ecommers/core/constans/const.dart';
import 'package:ecommers/core/utils/cash_helper.dart';
import 'package:ecommers/core/utils/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    var emailCont = TextEditingController();
    var passCont = TextEditingController();
    return BlocProvider(
      create: (BuildContext context) {
        return LoginCubit();
      },
      child: BlocConsumer<LoginCubit, LoginStaes>(
        builder: (BuildContext context, state) {
          return Scaffold(
            body: SingleChildScrollView(
                child: LoginViewBody(
              emailCont: emailCont,
              passCont: passCont,
            )),
            // resizeToAvoidBottomInset: false,
          );
        },
        listener: (BuildContext context, Object? state) {
          if (state is SuccLoginUser) {
            UID = state.Uid;
            CasheHelber.setDataShared(key: "Uid", value: state.Uid);
            if (state.isAdmin) {
              Nav(context, const AdminHome());
            } else {
              Nav(context, const HomeView());
            }
          } else if (state is eroorLoginUser) {
            showToast(msg: eroorLoginUser, n: SelectToast.eroor);
          }
        },
      ),
    );
  }
}
