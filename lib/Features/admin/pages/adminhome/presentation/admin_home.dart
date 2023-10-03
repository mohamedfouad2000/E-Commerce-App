import 'package:ecommers/Features/admin/pages/adminhome/presentation/manger/admin_cubit.dart';
import 'package:ecommers/Features/admin/pages/adminhome/presentation/manger/admin_states.dart';
import 'package:ecommers/Features/admin/pages/adminhome/presentation/widgets/admin_home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return AdminCubit();
      },
      child: BlocConsumer<AdminCubit, AdminStates>(
        builder: (BuildContext context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Admin Home"),
              centerTitle: true,
            ),
            body: const AdminHomeBody(),
          );
        },
        listener: (BuildContext context, Object? state) {},
      ),
    );
  }
}
