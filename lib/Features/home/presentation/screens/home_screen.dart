import 'package:ecommers/Features/home/presentation/manger/home_cubit.dart';
import 'package:ecommers/Features/home/presentation/manger/home_states.dart';
import 'package:ecommers/Features/home/presentation/widgets/custom_App_Bar.dart';
import 'package:ecommers/Features/home/presentation/widgets/custom_category.dart';
import 'package:ecommers/Features/home/presentation/widgets/mixed_fruit_pack.dart';
import 'package:ecommers/Features/home/presentation/widgets/organic_fruits.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var SearchController = TextEditingController();

    return BlocConsumer<HomeCubit, HomeStates>(
      builder: (BuildContext context, state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(searchController: SearchController),
              const CistomCategory(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: OrganicFruits(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: MixedFruitPackView(),
              ),
            ],
          ),
        );
      },
      listener: (BuildContext context, Object? state) {},
    );
  }
}
