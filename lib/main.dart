import 'package:ecommers/Features/splach/presentation/splach_view.dart';
import 'package:ecommers/core/blocobserve.dart';
import 'package:ecommers/core/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.green,
        primaryColor: kMainColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const Splashview(),
    );
  }
}
