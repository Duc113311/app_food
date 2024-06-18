import 'package:app_food_shopping/pages/food/popular_food_detail.dart';
import 'package:app_food_shopping/pages/food/recommended_food_detail.dart';
import 'package:app_food_shopping/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouterHelper {
  static const String initial = '/';

  static const String popularFood = "/popular-food";

  static const String recommendedFood = "/recommended-food";

  static String getInitial() => '$initial';

  static String getPopularFood() => '$popularFood';

  static String getRecommendedFood() => '$recommendedFood';

  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: () {
          return const MainFoodPage();
        }),
    GetPage(
        name: popularFood,
        page: () => const PopularFoodDetail(),
        transition: Transition.rightToLeft),
    GetPage(
        name: recommendedFood,
        page: () => const RecommendedFoodDetail(),
        transition: Transition.rightToLeft),
  ];
}
