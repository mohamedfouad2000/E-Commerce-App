import 'package:flutter/material.dart';
import 'package:ecommers/core/utils/size_config.dart';
import 'package:ecommers/core/utils/styles.dart';

Widget pageViewItem(
        {required String image,
        required String? title,
        required String? details}) =>
    Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: SizeConfig.screenHeight! * .20,
        ),
        SizedBox(
            height: SizeConfig.screenHeight! * .30, child: Image.asset(image)),
        const SizedBox(
          height: 15,
        ),
        Text(
          title!,
          style: StylesData.pageiteamtitle,
        ),
        const SizedBox(
          height: 25,
        ),
        Text(
          details!,
          style: StylesData.pageIteamDetails,
        ),
      ],
    );
