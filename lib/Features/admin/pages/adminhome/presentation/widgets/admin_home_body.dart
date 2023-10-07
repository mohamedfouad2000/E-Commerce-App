import 'package:ecommers/Features/Auth/pages/login/presentation/login_view.dart';
import 'package:ecommers/Features/admin/pages/create%20prodect/presentation/create_product.dart';
import 'package:ecommers/core/utils/components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminHomeBody extends StatelessWidget {
  const AdminHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextButton(
          onPressed: () {
            Get.to(() => const CreateProduct());
          },
          child: const Text("Create Product"),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("Edit Product"),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("Add category"),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("Show Order"),
        ),
        TextButton(
          onPressed: () {
            Nav(context, const Login());
          },
          child: const Text("Log Out "),
        ),
      ],
    );
  }
}
