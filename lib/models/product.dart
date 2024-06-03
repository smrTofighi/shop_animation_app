import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:shop_animation_app/gen/assets.gen.dart';

class Product {
  String? title, image, brand;
  int count;
  double price;

  Product(
      {this.title,
      this.image,
      this.brand,
      required this.count,
      required this.price});
}

RxList<Product> demoProducts = [
  Product(
      title: "Galaxy S7",
      image: Assets.images.galaxyS7,
      brand: "Samsung",
      count: 1,
      price: 850.9),
  Product(
      title: "Galaxy Note 7",
      image: Assets.images.gaalxyNote7,
      brand: "Samsung",
      count: 1,
      price: 981.1),
  Product(
      title: "Huawei P10",
      image: Assets.images.huaweiP10,
      brand: "Huawei",
      count: 1,
      price: 798.3),
  Product(
      title: "IPhone 7 Plus",
      image: Assets.images.iphone7Plus,
      brand: "Apple",
      count: 1,
      price: 1004.2),
  Product(
      title: "LG G5",
      image: Assets.images.lgG5,
      brand: "LG",
      count: 1,
      price: 801.1),
  Product(
      title: "Xiaomi MI 6",
      image: Assets.images.xiaomiMi6,
      brand: "Xiaomi",
      count: 1,
      price: 768.99),
].obs;
