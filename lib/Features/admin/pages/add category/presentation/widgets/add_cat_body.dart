import 'package:ecommers/core/utils/components.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddCatBody extends StatelessWidget {
  // const AddCatBody({super.key});
  var catController = TextEditingController();

  AddCatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customTextFormedFiled(
            controller: catController, hintText: "Add Category ")
      ],
    );
  }
}
