import 'package:flutter/material.dart';
import 'package:ecommers/core/utils/colors.dart';
// import 'package:ecommers/core/utils/size_config.dart';
// import 'package:ecommers/core/utils/size_config.dart';

Widget defaultButton({required VoidCallback fun, required String text}) =>
    Container(
      decoration: BoxDecoration(
          color: kMainColor, borderRadius: BorderRadius.circular(10)),
      height: 60,
      width: double.infinity,
      child: TextButton(
        onPressed: fun,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget customTextFiled(
        {required TextEditingController controller,
        required TextStyle textstyle,
        TextInputType type = TextInputType.name,
        int maxLines = 1}) =>
    TextField(
      controller: controller,
      maxLines: maxLines,
      keyboardType: type,
      style: textstyle,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),

        // labelText: 'Password',
      ),
    );
Widget customTextFormedFiled({
  required controller,
  TextInputType type = TextInputType.name,
  required IconData preicon,
  bool obscureText = false,
  String val = "",
  var sufficon,
  required String hintText,
  var sufFunction,
}) =>
    TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: type,
      validator: (value) {
        if (value != null && value.isEmpty) {
          return val;
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(preicon),

        suffixIcon: sufficon != null
            ? InkWell(
                onTap: () {
                  sufFunction();
                },
                child: Icon(sufficon))
            : null,

        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),

        // labelText: 'Password',
      ),
    );
