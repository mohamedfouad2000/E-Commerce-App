import 'package:ecommers/core/utils/colors.dart';
import 'package:ecommers/core/utils/components.dart';
import 'package:ecommers/core/utils/size_config.dart';
import 'package:ecommers/core/utils/styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key, required this.searchController});
  // ignore: prefer_typing_uninitialized_variables
  var searchController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (SizeConfig.screenHeight! * .20) + 40,
      child: Stack(
        children: [
          Container(
            color: kMainColor,
            height: SizeConfig.screenHeight! * .20,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Fruit Market",
                    style: StylesData.logoStyle.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
          ),
          Positioned(
            top: (SizeConfig.screenHeight! * .20) - 30,
            bottom: 20,
            left: 10,
            right: 10,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: customTextFormedFiled(
                  controller: searchController,
                  hintText: "Search",
                  preicon: Icons.search),
            ),
          ),
        ],
      ),
    );
  }
}
