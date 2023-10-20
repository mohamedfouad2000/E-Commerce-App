import 'package:ecommers/Features/home/presentation/manger/home_cubit.dart';
import 'package:ecommers/Features/home/presentation/manger/home_states.dart';
// import 'package:ecommers/Features/home/presentation/widgets/home_page_body.dart';
// import 'package:ecommers/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return HomeCubit();
      },
      child: BlocConsumer<HomeCubit, HomeStates>(
        builder: (BuildContext context, state) {
          return Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                elevation: 0.0,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart_outlined),
                    label: "Shopping cart",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border),
                    label: "Favourite",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_2_outlined),
                    label: "My Account",
                  ),
                ],
                currentIndex: HomeCubit.get(context).currentIndex,
                onTap: (value) {
                  HomeCubit.get(context).changeIndex(value: value);
                },
              ),
              body: HomeCubit.get(context)
                  .Screens[HomeCubit.get(context).currentIndex]);
        },
        listener: (BuildContext context, Object? state) {},
      ),
    );
  }
}
