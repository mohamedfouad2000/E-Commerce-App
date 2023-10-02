import 'package:flutter/material.dart';
import 'package:ecommers/Features/splach/presentation/widgets/splach_view_body.dart';
import 'package:ecommers/core/utils/size_config.dart';

class Splashview extends StatelessWidget {
  const Splashview({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      backgroundColor: Color(0xff69A03A),
      body: Splashviewbody(),
    );
  }
}
