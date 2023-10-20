import 'package:ecommers/Features/home/presentation/manger/home_states.dart';
import 'package:ecommers/Features/home/presentation/screens/fav_screen.dart';
import 'package:ecommers/Features/home/presentation/screens/home_screen.dart';
import 'package:ecommers/Features/home/presentation/screens/shopping_screen.dart';
import 'package:ecommers/Features/home/presentation/screens/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(InitHomeState());
  static HomeCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  void changeIndex({required int value}) {
    currentIndex = value;
    emit(ChangeIcon());
  }

  List<Widget> Screens = [
    const HomeScreen(),
    const ShoppingScreen(),
    const FavScreen(),
    const UserScreen()
  ];
}
