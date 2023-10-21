// import 'package:ecommers/core/utils/assets_data.dart';
import 'package:ecommers/core/utils/assets_data.dart';
import 'package:ecommers/core/utils/colors.dart';
import 'package:ecommers/core/utils/size_config.dart';
import 'package:ecommers/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OrganicFruits extends StatelessWidget {
  const OrganicFruits({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Row(
            children: [
              const Text(
                "Organic Fruits",
                style: StylesData.titleInfo,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "(20% Off)",
                style: StylesData.pageIteamDetails.copyWith(color: kMainColor),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Pick up from organic farms",
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * .35,
          child: ListView.separated(
            // shrinkWrap: false,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image(
                        image: const NetworkImage(
                            "https://images.unsplash.com/photo-1601004890684-d8cbf643f5f2?auto=format&fit=crop&q=80&w=1615&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                        height: SizeConfig.screenHeight! * .20,
                      ),
                      Positioned(
                        left: 60,
                        child: Container(
                          height: 30,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                                size: 20,
                              )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Strawberry",
                    style: StylesData.pageIteamDetails
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: .2,
                    direction: Axis.horizontal,
                    itemPadding: EdgeInsetsDirectional.zero,
                    itemCount: 5,
                    itemSize: 15,
                    // itemPadding: const EdgeInsets.all(),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      // size: .2,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image(
                        image: AssetImage(AssetsData.pathImage),
                        height: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "300 Per/ kg",
                        style: StylesData.pageIteamDetails,
                      ),
                    ],
                  )
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                width: 10,
              );
            },
            itemCount: 4,
          ),
        ),
      ],
    );
  }
}
