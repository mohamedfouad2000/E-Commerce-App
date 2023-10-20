import 'package:ecommers/Features/home/presentation/manger/home_cubit.dart';
import 'package:ecommers/Features/home/presentation/manger/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      builder: (BuildContext context, state) {
        return const Column(
          children: [Text("Fav")],
        );
      },
      listener: (BuildContext context, Object? state) {},
    );
  }
}
