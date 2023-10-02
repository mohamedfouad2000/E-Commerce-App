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
  Future.delayed(const Duration(seconds: 3), () {
    Get.to(() => const BoardingView(), transition: Transition.fade);
  });
}
