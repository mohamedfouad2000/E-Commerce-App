import 'package:ecommers/Features/home/presentation/manger/home_cubit.dart';
import 'package:ecommers/Features/home/presentation/manger/home_states.dart';
import 'package:ecommers/Features/home/presentation/widgets/custom_App_Bar.dart';
import 'package:ecommers/core/utils/colors.dart';

import 'package:ecommers/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    var SearchController = TextEditingController();
    return BlocConsumer<HomeCubit, HomeStates>(
      builder: (BuildContext context, state) {
        return Column(
          children: [
            CustomAppBar(searchController: SearchController),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: kHeaderColorSelected),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Vegetables",
                        style: StylesData.headerStyleUnselect,
                      ),
                    )),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: kHeaderColorUnSelected),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Fruits",
                          style: StylesData.headerStyleSelect,
                        ))),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: kHeaderColorUnSelected),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Dry Fruits",
                        style: StylesData.headerStyleUnselect,
                      ),
                    )),
              ],
            )
          ],
        );
      },
      listener: (BuildContext context, Object? state) {},
    );
  }
}
