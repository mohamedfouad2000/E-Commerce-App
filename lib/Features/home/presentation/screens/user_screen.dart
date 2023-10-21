import 'package:ecommers/Features/home/presentation/manger/home_cubit.dart';
import 'package:ecommers/Features/home/presentation/manger/home_states.dart';
import 'package:ecommers/Features/home/presentation/widgets/custom_user_data.dart';
import 'package:ecommers/core/utils/assets_data.dart';

import 'package:ecommers/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      builder: (BuildContext context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const UserDeatils(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "My Orders",
                        style:
                            StylesData.nameStyle.copyWith(color: Colors.black),
                      ),
                      leading: const Image(
                        image: AssetImage(
                          AssetsData.myOrderImage,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Favourites",
                        style:
                            StylesData.nameStyle.copyWith(color: Colors.black),
                      ),
                      leading: const Image(
                        image: AssetImage(
                          AssetsData.favImage,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Settings",
                        style:
                            StylesData.nameStyle.copyWith(color: Colors.black),
                      ),
                      leading: const Image(
                        image: AssetImage(
                          AssetsData.settingsImage,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "My Cart",
                        style:
                            StylesData.nameStyle.copyWith(color: Colors.black),
                      ),
                      leading: const Image(
                        image: AssetImage(
                          AssetsData.cartImage,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Rate us",
                        style:
                            StylesData.nameStyle.copyWith(color: Colors.black),
                      ),
                      leading: const Image(
                        image: AssetImage(
                          AssetsData.rateUsImage,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Refer a Friend",
                        style:
                            StylesData.nameStyle.copyWith(color: Colors.black),
                      ),
                      leading: const Image(
                        image: AssetImage(
                          AssetsData.referaFriendImage,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Help ",
                        style:
                            StylesData.nameStyle.copyWith(color: Colors.black),
                      ),
                      leading: const Image(
                        image: AssetImage(
                          AssetsData.helpImage,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Log out",
                        style:
                            StylesData.nameStyle.copyWith(color: Colors.black),
                      ),
                      leading: const Image(
                        image: AssetImage(
                          AssetsData.logoutImage,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      listener: (BuildContext context, Object? state) {},
    );
  }
}
