// ignore_for_file: must_be_immutable

import 'package:ecommers/Features/admin/pages/adminhome/presentation/admin_home.dart';
import 'package:ecommers/Features/admin/pages/adminhome/presentation/manger/admin_cubit.dart';
import 'package:ecommers/Features/admin/pages/adminhome/presentation/manger/admin_states.dart';
import 'package:ecommers/Features/admin/pages/create%20prodect/presentation/widgets/image_create.dart';
import 'package:ecommers/core/utils/components.dart';
import 'package:ecommers/core/utils/size_config.dart';
import 'package:ecommers/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CreateProductBody extends StatelessWidget {
  // int x = 0;

  CreateProductBody(
      {super.key,
      required this.descController,
      required this.imgController,
      required this.priceController,
      required this.titleController});
  var titleController = TextEditingController();
  var priceController = TextEditingController();
  var descController = TextEditingController();
  // var categoryController = TextEditingController();
  // var locationController = TextEditingController();
  // ignore: unused_local_variable
  var imgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // const CreateProductBody({super.key});

    // List<String> list = <String>['One', 'Two', 'Three', 'Four'];
    return BlocConsumer<AdminCubit, AdminStates>(
      builder: (BuildContext context, state) {
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
                const ImageCreate(),
                const SizedBox(
                  height: 5,
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
                  type: TextInputType.text,
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
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        // color: Colors.amber,
                        height: 60,
                        child: Center(
                          child: Text(
                            "${AdminCubit.get(context).imgname}",
                            textAlign: TextAlign.center,
                            style: StylesData.titleInfo,
                          ),
                        ),
                        // width: double.infinity,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          var x = AlertDialog(
                            title: Text(
                              "Chosse Your Photo",
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.background),
                            ),
                            content: SizedBox(
                              height: 140,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 50,
                                      width: double.infinity,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                      child: TextButton.icon(
                                          label: const Text(
                                            "Gallary",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () async {
                                            await AdminCubit.get(context)
                                                .shareImageInFirebase(
                                                    i: ImageSource.gallery)
                                                .then((value) {
                                              Navigator.pop(context);
                                            });
                                            // Navigator.pop(context);
                                          },
                                          icon: const Icon(
                                            Icons.storage_outlined,
                                            color: Colors.white,
                                          ))),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                      height: 50,
                                      width: double.infinity,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                      child: TextButton.icon(
                                          label: const Text(
                                            "camera",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () async {
                                            await AdminCubit.get(context)
                                                .shareImageInFirebase(
                                                    i: ImageSource.camera)
                                                .then((value) {
                                              Navigator.pop(context);
                                            });
                                          },
                                          icon: const Icon(
                                            Icons.camera_alt,
                                            color: Colors.white,
                                          ))),
                                ],
                              ),
                            ),
                          );
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return x;
                              });
                        },
                        icon: const Icon(Icons.image)),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                if (AdminCubit.get(context).msqEroor == 1) eroorFieds(),
                const SizedBox(
                  height: 15,
                ),
                defaultButton(
                    fun: () {
                      if (AdminCubit.get(context).imgname!.isNotEmpty &&
                          titleController.text.isNotEmpty &&
                          descController.text.isNotEmpty &&
                          priceController.text.isNotEmpty) {
                        AdminCubit.get(context)
                            .createProduct(
                                title: titleController.text,
                                price: priceController.text,
                                cate: AdminCubit.get(context).dropdownValue,
                                des: descController.text,
                                img: AdminCubit.get(context).imgFirebase!)
                            .then((value) {
                          Get.to(() => const AdminHome());
                        });
                      } else {
                        AdminCubit.get(context).change();
                      }
                    },
                    text: "Add Product")
              ],
            ),
          ),
        );
      },
      listener: (BuildContext context, Object? state) {},
    );
  }
}
