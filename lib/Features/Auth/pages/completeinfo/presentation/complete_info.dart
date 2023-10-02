import 'package:flutter/material.dart';
import 'package:ecommers/Features/Auth/pages/completeinfo/presentation/widgets/complete_info_body.dart';

class CompleteInfo extends StatelessWidget {
  const CompleteInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: CompleteInfoBody(),
    );
  }
}
