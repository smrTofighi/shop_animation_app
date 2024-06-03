import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shop_animation_app/constant.dart';
import 'package:shop_animation_app/models/product.dart';
import 'package:shop_animation_app/screens/details/widgets/cart_counter.dart';
import 'package:shop_animation_app/widgets/fav_button.dart';
import 'package:shop_animation_app/widgets/price_model.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen(
      {super.key, required this.product, required this.onAddToCart});

  final Product product;
  final Function() onAddToCart;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  String _cartTag = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.25,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 16),
                  width: double.infinity,
                  color: primaryColor2,
                  child: Hero(
                    tag: widget.product.title! + _cartTag,
                    child: SvgPicture.asset(widget.product.image!),
                  ),
                ),
                const Positioned(
                  bottom: -20,
                  child: CartCounter(),
                )
              ],
            ),
          ),
          const SizedBox(height: defaultPadding * 1.5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.product.title!,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Price(amount: widget.product.price),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              style: TextStyle(
                color: Color(0xFFBDBDBD),
                height: 1.8,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
              horizontal: defaultPadding, vertical: 12),
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
            onPressed: () {
              widget.onAddToCart();
              setState(() {
                _cartTag = "_cartTag";
              });
              Navigator.pop(context);
            },
            child: const Text(
              'Add To Cart',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: const BackButton(
        color: Colors.black,
      ),
      backgroundColor:primaryColor2,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        "Fruits",
        style: TextStyle(color: Colors.black),
      ),
      actions: const [
        FavButton(radius: 20),
        SizedBox(width: defaultPadding),
      ],
    );
  }
}
