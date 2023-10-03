import 'package:ecommers/Features/admin/pages/add%20category/presentation/widgets/add_cat_body.dart';
import 'package:flutter/material.dart';

class AddCategory extends StatelessWidget {
  const AddCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Add Category"),
      ),
      body: AddCatBody(),
    );
  }
}
