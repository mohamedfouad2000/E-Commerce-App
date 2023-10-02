// import 'package:bloc_provider/bloc_provider.dart';
import 'package:ecommers/Features/Auth/pages/login/presentation/widgets/login_view_body.dart';
import 'package:ecommers/Features/Auth/pages/manger/login_cubit.dart';
import 'package:ecommers/Features/Auth/pages/manger/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return LoginCubit();
      },
      child: BlocConsumer<LoginCubit, LoginStaes>(
        builder: (BuildContext context, state) {
          return Scaffold(
            body: SingleChildScrollView(child: LoginViewBody()),
            // resizeToAvoidBottomInset: false,
          );
        },
        listener: (BuildContext context, Object? state) {},
      ),
    );
  }
}
