import 'package:ecommers/core/utils/assets_data.dart';
import 'package:ecommers/core/utils/colors.dart';
import 'package:ecommers/core/utils/size_config.dart';
import 'package:ecommers/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MixedFruitPackView extends StatelessWidget {
  const MixedFruitPackView({super.key});

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
                "Mixed Fruit Pack",
                style: StylesData.titleInfo,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "(10% Off)",
                style: StylesData.pageIteamDetails.copyWith(color: kMainColor),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Fruit mix fresh pack",
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
                        image: const AssetImage(AssetsData.testImage),
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
                    "Multi Fruits Pack",
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
