import 'package:flutter/material.dart';
import 'package:ecommers/core/utils/components.dart';
// import 'package:ecommers/core/utils/size_config.dart';
import 'package:ecommers/core/utils/styles.dart';

class CompleteInfoBody extends StatelessWidget {
  const CompleteInfoBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var numberController = TextEditingController();
    var addressController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          const Text(
            "Enter Your Name",
            style: StylesData.titleInfo,
          ),
          const SizedBox(
            height: 10,
          ),
          customTextFiled(
            controller: nameController,
            textstyle: const TextStyle(color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Enter Your Phone Number",
            style: StylesData.titleInfo,
          ),
          const SizedBox(
            height: 10,
          ),
          customTextFiled(
            controller: numberController,
            type: TextInputType.phone,
            textstyle: const TextStyle(color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Add Address",
            style: StylesData.titleInfo,
          ),
          const SizedBox(
            height: 10,
          ),
          customTextFiled(
            controller: addressController,
            maxLines: 6,
            textstyle: const TextStyle(
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          defaultButton(fun: () {}, text: "Login")
        ],
      ),
    );
  }
}
