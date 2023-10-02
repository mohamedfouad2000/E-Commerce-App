import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:ecommers/Features/Boarding/presentation/widgets/custom_page_view.dart';
import 'package:ecommers/Features/Auth/pages/login/presentation/login_view.dart';
import 'package:ecommers/core/utils/colors.dart';
import 'package:ecommers/core/utils/components.dart';
import 'package:ecommers/core/utils/size_config.dart';
import 'package:get/get.dart';

class BoardingViewBody extends StatefulWidget {
  const BoardingViewBody({super.key});

  @override
  State<BoardingViewBody> createState() => _BoardingViewBodyState();
}

class _BoardingViewBodyState extends State<BoardingViewBody> {
  PageController? pageController;
  int? index;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(
      initialPage: 0,
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageviewcontroller: pageController!,
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 18,
          left: 0,
          right: 0,
          child: DotsIndicator(
            dotsCount: 3,
            onTap: (i) {
              print(i);
            },
            position:
                pageController!.hasClients ? pageController!.page!.toInt() : 0,

            // position: widget.index!,
            decorator: DotsDecorator(activeColor: kMainColor),
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height * .07,
            right: 20,
            child: Visibility(
              visible: pageController!.hasClients && pageController!.page == 2
                  ? false
                  : true,
              child: TextButton(
                onPressed: () {
                  Get.to(() => const Login(),
                      transition: Transition.rightToLeft);
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff898989),
                      fontFamily: 'poppins'),
                  textAlign: TextAlign.right,
                ),
              ),
            )),
        Positioned(
            // top: SizeConfig.defaultSize! * 10,
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 7,
            child: defaultButton(
                fun: () {
                  if (pageController!.hasClients) {
                    if (pageController!.page! < 2) {
                      pageController!.nextPage(
                          duration: const Duration(microseconds: 8000),
                          curve: Curves.easeInCirc);
                    } else {
                      Get.to(() => const Login(),
                          transition: Transition.rightToLeft);
                    }
                  }
                },
                text: pageController!.hasClients && pageController!.page == 2
                    ? "Get Start"
                    : "Next")),
      ],
    );
  }
}
