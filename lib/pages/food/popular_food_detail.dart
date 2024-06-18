import 'package:app_food_shopping/widgets/expandable_text_widget.dart';
import 'package:app_food_shopping/widgets/small_text.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/app_column.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/banner02.jpg"))),
            ),
          ),
          // Icon widgets
          const Positioned(
              top: 45,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                    icon: Icons.arrow_back_ios,
                  ),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],
              )),
          // Introduction of food
          Positioned(
              left: 0,
              right: 0,
              top: 300,
              bottom: 0,
              child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppColumn(
                        text: "Chinese Side",
                      ),
                      const SizedBox(
                        height:10,
                      ),
                      BigText(text: "Introduce"),
                      const SizedBox(
                        height: 10,
                      ),
                      // const ExpandableTextWidget(text: "Mart")
                      const Expanded(
                        child: SingleChildScrollView(
                          child: ExpandableText(
                              text:
                                  "Carrots contain a lot of vitamins that help increase musCarrots contain a lot of vitamins thatt help increase musCarrots contain a lot of vitamins thatt help increase musCarrots contain a lot of vitamins thatt help increase musCarrots contain a lot of vitamins thatt help increase musCarrots contain a lot of vitamins thatt help increase musCarrots contain a lot of vitamins thatt help increase musCarrots contain a lot of vitamins thatt help increase musCarrots contain a lot of vitamins thatt help increase musCarrots contain a lot of vitamins thatt help increase musCarrots contain a lot of vitamins thatt help increase musCarrots contain a lot of vitamins thatt help increase musCarrots contain a lot of vitamins thatt help increase musCarrots contain a lot of vitamins thatt help increase musCarrots contain a lot of vitamins thatt help increase musCarrots contain a lot of vitamins thatt help increase musCarrots contain a lot of vitamins thatt help increase musCarrots contain a lot of vitamins thatt help increase musCarrots contain a lot of vitamins thatt help increase musCarrots contain a lot of vitamins that help increase musCarrots contain a lot of vitamins that help increase muscle resistance.Carrots contain a lot of vitamins that help increase muscle resistance.Carrots contain a lot of vitamins that help increase muscle resistance .Combined with chicken, which is a rich source of nutrients,will bring your family a nutritious meal."),
                        ),
                      ),
                    ],
                  ))),
          // Expandable text widget
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding:
            const EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
        decoration: const BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                children: [
                  const Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  BigText(text: "0"),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.mainColor),
              child: BigText(text: "\$10 | Add to card"),
            )
          ],
        ),
      ),
    );
  }
}
