import 'package:ecommers/Features/Auth/pages/login/presentation/login_view.dart';
import 'package:ecommers/Features/home/presentation/home.dart';
import 'package:ecommers/core/constans/const.dart';
import 'package:ecommers/core/utils/cash_helper.dart';
import 'package:flutter/material.dart';
import 'package:ecommers/Features/Boarding/presentation/boarding_view.dart';
import 'package:ecommers/core/utils/styles.dart';
import 'package:get/get.dart';

class Splashviewbody extends StatefulWidget {
  const Splashviewbody({super.key});

  @override
  State<Splashviewbody> createState() => _SplashviewbodyState();
}

class _SplashviewbodyState extends State<Splashviewbody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? feadingAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(microseconds: 600));
    feadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        AnimatedBuilder(
          animation: feadingAnimation!,
          builder: (BuildContext context, Widget? child) {
            return Opacity(
                opacity: feadingAnimation!.value,
                child: const Text(
                  "Fruit Market",
                  style: StylesData.logoStyle,
                ));
          },
        ),
        const Image(
          image: AssetImage(
            'assets/images/splash_view_image.png',
          ),
          fit: BoxFit.fill,
        )
      ],
    );
  }
}

void goToNextView() {
  Widget Start;
  UID = CasheHelber.getDataShared(key: "Uid");
  // bool boarding = false;
  bool boarding = CasheHelber.getBool(key: "Boarding") ?? false;
  // bool Boarding = CasheHelber.getBool(key:"Boarding");

  if (boarding) {
    print("1");

    if (UID != null) {
      print("2");
      Start = const HomeView();
      // Get.to(() => const HomeView(), transition: Transition.fade);
    } else {
      print("1");
      Start = const Login();

      // Get.to(() => const Login(), transition: Transition.fade);
    }
  } else {
    print("1");
    Start = const BoardingView();

    // Get.to(() => const BoardingView(), transition: Transition.fade);
  }
  Future.delayed(const Duration(seconds: 5), () {
    print("1");
    Get.to(() => Start, transition: Transition.fade);
  });
}
