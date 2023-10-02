import 'package:ecommers/Features/Auth/pages/manger/login_cubit.dart';
import 'package:ecommers/Features/Auth/pages/manger/login_states.dart';
import 'package:ecommers/Features/Auth/pages/register/widgets/register_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return LoginCubit();
      },
      child: BlocConsumer<LoginCubit, LoginStaes>(
        builder: (BuildContext context, state) {
          return Scaffold(
            body: SingleChildScrollView(child: RegisterBody()),
          );
        },
        listener: (BuildContext context, Object? state) {},
      ),
    );
  }
}
