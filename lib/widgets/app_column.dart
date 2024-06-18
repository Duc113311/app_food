

import 'package:app_food_shopping/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;

  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: 36,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {
                return const Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15,
                );
              }),
            ),
            const SizedBox(
              width: 10,
            ),
            SmallText(
              text: "4.5",
            ),
            const SizedBox(
              width: 10,
            ),
            SmallText(text: "1287"),
            const SizedBox(
              width: 10,
            ),
            SmallText(text: "comments")
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: "Normal",
              iconColor: AppColors.iconColor1,
            ),
            IconAndTextWidget(
              icon: Icons.location_on,
              text: "1.7km",
              iconColor: AppColors.mainColor,
            ),
            IconAndTextWidget(
              icon: Icons.access_time_rounded,
              text: "32min",
              iconColor: AppColors.iconColor2,
            )
          ],
        )
      ],
    );
  }
}
