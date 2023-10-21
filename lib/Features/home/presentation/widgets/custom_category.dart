import 'package:ecommers/Features/home/presentation/manger/home_cubit.dart';
import 'package:ecommers/Features/home/presentation/manger/home_states.dart';
import 'package:ecommers/core/utils/colors.dart';
import 'package:ecommers/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CistomCategory extends StatelessWidget {
  const CistomCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, Object? state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: HomeCubit.get(context).SelectButton == 1
                        ? kHeaderColorSelected
                        : kHeaderColorUnSelected),
                child: TextButton(
                  onPressed: () {
                    HomeCubit.get(context).ChangeSelectButton(x: 1);
                  },
                  child: Text(
                    "Vegetables",
                    style: HomeCubit.get(context).SelectButton == 1
                        ? StylesData.headerStyleSelect
                        : StylesData.headerStyleUnselect,
                  ),
                )),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: HomeCubit.get(context).SelectButton == 2
                        ? kHeaderColorSelected
                        : kHeaderColorUnSelected),
                child: TextButton(
                    onPressed: () {
                      HomeCubit.get(context).ChangeSelectButton(x: 2);
                    },
                    child: Text(
                      "Fruits",
                      style: HomeCubit.get(context).SelectButton == 2
                          ? StylesData.headerStyleSelect
                          : StylesData.headerStyleUnselect,
                    ))),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: HomeCubit.get(context).SelectButton == 3
                        ? kHeaderColorSelected
                        : kHeaderColorUnSelected),
                child: TextButton(
                  onPressed: () {
                    HomeCubit.get(context).ChangeSelectButton(x: 3);
                  },
                  child: Text("Dry Fruits",
                      style: HomeCubit.get(context).SelectButton == 3
                          ? StylesData.headerStyleSelect
                          : StylesData.headerStyleUnselect),
                )),
          ],
        );
      },
    );
  }
}
