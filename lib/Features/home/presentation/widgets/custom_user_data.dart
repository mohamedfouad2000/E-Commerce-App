import 'package:ecommers/core/utils/colors.dart';
import 'package:ecommers/core/utils/size_config.dart';
import 'package:ecommers/core/utils/styles.dart';
import 'package:flutter/material.dart';

class UserDeatils extends StatelessWidget {
  const UserDeatils({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          color: kMainColor,
          height: SizeConfig.screenHeight! * .35,
          width: double.infinity,
        ),
        Positioned(
          top: (SizeConfig.screenHeight! * .35) * .2,
          right: 0,
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              )),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 51,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 50,
                        backgroundImage: NetworkImage(
                          "https://previews.123rf.com/images/vectoraa/vectoraa1801/vectoraa180100941/93705466-user-icon-vector-flat-design-best-vector-icon.jpg",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Manish Chutake",
                    style: StylesData.nameStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "manishuxuid@gmail.com",
                    style: StylesData.emailStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
