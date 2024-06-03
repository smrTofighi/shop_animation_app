import 'package:get/get.dart';
import 'package:shop_animation_app/controllers/product_controller.dart';

class AppBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(ProductController());
  }

}