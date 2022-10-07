import 'package:hotel/controllers/popular_product_controller.dart';
import 'package:hotel/data/api/api_client.dart';
import 'package:get/get.dart';
import 'package:hotel/data/repository/popular_product_repo.dart';
import 'package:hotel/utils/app_constants.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  // controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
