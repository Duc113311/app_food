import 'package:app_food_shopping/controllers/popular_product_controller.dart';
import 'package:app_food_shopping/data/api/api_client.dart';
import 'package:app_food_shopping/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // API Client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://www.dbestech.com"));
  // Repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  // Controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));

  }
