import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
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
    var titleController = TextEditingController();
    var priceController = TextEditingController();
    var descController = TextEditingController();
    // var categoryController = TextEditingController();
    // var locationController = TextEditingController();
    // ignore: unused_local_variable
    var imgController = TextEditingController();
    return BlocProvider(
      create: (BuildContext context) {
        return AdminCubit()..getCategory();
      },
      child: BlocConsumer<AdminCubit, AdminStates>(
        builder: (BuildContext context, state) {
          return Scaffold(
            body: ConditionalBuilder(
              condition:
                  // state is! getCatLoading &&
                  AdminCubit.get(context).cat.isNotEmpty,
              builder: (BuildContext context) {
                return CreateProductBody(
                    descController: descController,
                    imgController: imgController,
                    priceController: priceController,
                    titleController: titleController);
              },
              fallback: (BuildContext context) {
                return const Center(child: CircularProgressIndicator());
              },
            ),
          );
        },
        listener: (BuildContext context, Object? state) {},
      ),
    );
  }
}
