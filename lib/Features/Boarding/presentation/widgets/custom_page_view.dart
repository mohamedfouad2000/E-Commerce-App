import 'package:flutter/material.dart';
import 'package:ecommers/Features/Boarding/presentation/widgets/page_view_iteam.dart';
import 'package:ecommers/core/utils/assets_data.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.pageviewcontroller});
  final PageController pageviewcontroller;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageviewcontroller,
      children: [
        pageViewItem(
            image: AssetsData.onboarding1,
            title: "E Shopping",
            details: "Explore  top organic fruits & grab them"),
        pageViewItem(
            image: AssetsData.onboarding2,
            title: "Delivery on the way",
            details: "Get your order by speed delivery"),
        pageViewItem(
            image: AssetsData.onboarding3,
            title: "Delivery Arrived",
            details: 'Order is arrived at your Place'),
      ],
    );
  }
}
