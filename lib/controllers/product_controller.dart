import 'dart:developer';

import 'package:get/get.dart';
import 'package:shop_animation_app/models/product.dart';

class ProductController extends GetxController{
  RxList<Product> cart = RxList();
  RxDouble totalPrice = RxDouble(0);
  RxInt totalCount = RxInt(0);

  void addToCart(Product product){
    product.count= product.count++;
    if(!cart.contains(product)){
      cart.add(product);
    }
    totalPrice.value = totalPrice.value + (product.count * product.price);
    totalCount.value = totalCount.value + product.count; 
    log(cart.toString());
    update();
  }
}