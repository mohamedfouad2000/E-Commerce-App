// ignore_for_file: must_be_immutable

import 'package:ecommers/core/utils/components.dart';
import 'package:ecommers/core/utils/size_config.dart';
import 'package:ecommers/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CreateProductBody extends StatelessWidget {
  // const CreateProductBody({super.key});
  var titleController = TextEditingController();
  var priceController = TextEditingController();
  var descController = TextEditingController();
  var categoryController = TextEditingController();
  // var locationController = TextEditingController();
  var imgController = TextEditingController();

  CreateProductBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.screenHeight! * .1,
            ),
            const Text(
              "Enter Your Title",
              style: StylesData.titleInfo,
            ),
            const SizedBox(
              height: 5,
            ),
            customTextFiled(
              controller: titleController,
              textstyle: const TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Enter Your price",
              style: StylesData.titleInfo,
            ),
            const SizedBox(
              height: 5,
            ),
            customTextFiled(
              controller: priceController,
              type: TextInputType.number,
              textstyle: const TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Enter Your category",
              style: StylesData.titleInfo,
            ),
            const SizedBox(
              height: 5,
            ),
            customTextFiled(
              controller: categoryController,
              type: TextInputType.phone,
              textstyle: const TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Enter Your description",
              style: StylesData.titleInfo,
            ),
            const SizedBox(
              height: 5,
            ),
            customTextFiled(
              controller: descController,
              type: TextInputType.phone,
              textstyle: const TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Add  image",
              style: StylesData.titleInfo,
            ),
            const SizedBox(
              height: 5,
            ),
            customTextFiled(
              controller: imgController,
              // maxLines: 6,
              textstyle: const TextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            defaultButton(fun: () {}, text: "Add Product")
          ],
        ),
      ),
    );
  }
}
