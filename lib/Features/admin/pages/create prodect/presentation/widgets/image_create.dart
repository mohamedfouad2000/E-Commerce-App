import 'package:ecommers/Features/admin/pages/adminhome/presentation/manger/admin_cubit.dart';
import 'package:ecommers/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ImageCreate extends StatelessWidget {
  const ImageCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Enter Your category",
          style: StylesData.titleInfo,
        ),
        const SizedBox(
          width: 20,
        ),
        DropdownButton<String>(
          value: AdminCubit.get(context).dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          // padding: const EdgeInsets.all(10),
          // autofocus: false,
          borderRadius: BorderRadius.circular(10),

          // style: const TextStyle(color: Colors.deepPurple),
          // underline: Container(
          //   height: 2,
          //   color: Colors.deepPurpleAccent,
          // ),
          onChanged: (String? value) {
            AdminCubit.get(context).dropDownFun(value: value!);
            // This is called when the user selects an item.
            // setState(() {
            //   dropdownValue = value!;
            // });
          },
          items: AdminCubit.get(context)
              .cat
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}
