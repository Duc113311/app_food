import 'package:app_food_shopping/utils/colors.dart';
import 'package:app_food_shopping/widgets/app_icon.dart';
import 'package:app_food_shopping/widgets/big_text.dart';
import 'package:app_food_shopping/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';
import '../../widgets/big_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Center(
                    child: BigText(
                  text: 'Chinese Side',
                  size: 20,
                )),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/banner02.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: const ExpandableText(
                      text:
                          "If you want a dish that is both delicious and can support the digestive tract, especially treating ish that is both delicious and can support the digestive tract, especially treating ish that is both delicious and can support the digestive tract, especially treating ish that is both delicious and can support the digestive tract, especially treating ish that is both delicious and can support the digestive tract, especially treating ish that is both delicious and can support the digestive tract, especially treating ish that is both delicious and can support the digestive tract, especially treating ish that is both delicious and can support the digestive tract, especially treating ish that is both delicious and can support the digestive tract, especially treating ish that is both delicious and can support the digestive tract, especially treating ish that is both delicious and can support the digestive tract, especially treating ish that is both delicious and can support the digestive tract, especially treating ish that is both delicious and can support the digestive tract, especially treating ish that is both delicious and can support the digestive tract, especially treating ish that is both delicious and can support the digestive tract, especially treatih that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingh that is both delicious and can support the digestive tract, especially treatingng stomach diseases effectively, don't miss the chicken braised with turmeric! This is a dish with a simple recipe and easy-to-find ingredients that will bring your family a meal with a beautiful yellow color, the fragrant smell of turmeric mixed with the sweetness of chicken, extremely appealing to the taste buds. On cold, rainy days, if you eat rice with chicken braised with turmeric, your rice cooker is guaranteed to be empty in the blink of an eye."),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppIcon(
                  iconSize: 24,
                  iconColor: Colors.white,
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                ),
                BigText(
                  text: "\$12.88" + " X " + " 0 ",
                  color: AppColors.mainBlackColor,
                  size: 26,
                ),
                const AppIcon(
                  iconSize: 24,
                  icon: Icons.add,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
