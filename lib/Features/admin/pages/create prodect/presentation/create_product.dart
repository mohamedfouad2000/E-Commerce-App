import 'package:ecommers/Features/admin/pages/adminhome/presentation/manger/admin_cubit.dart';
import 'package:ecommers/Features/admin/pages/adminhome/presentation/manger/admin_states.dart';
import 'package:ecommers/Features/admin/pages/create%20prodect/presentation/widgets/create_product_body.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class CreateProduct extends StatelessWidget {
  const CreateProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return AdminCubit();
      },
      child: BlocConsumer<AdminCubit, AdminStates>(
        builder: (BuildContext context, state) {
          return Scaffold(
            body: CreateProductBody(),
          );
        },
        listener: (BuildContext context, Object? state) {},
      ),
    );
  }
}
