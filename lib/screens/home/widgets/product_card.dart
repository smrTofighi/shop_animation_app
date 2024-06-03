import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_animation_app/constant.dart';
import 'package:shop_animation_app/models/product.dart';
import 'package:shop_animation_app/widgets/fav_button.dart';
import 'package:shop_animation_app/widgets/price_model.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.press,
  });

  final Product product;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        decoration: const BoxDecoration(
          color: Color(0xFFF7F7F7),
          borderRadius: BorderRadius.all(
            Radius.circular(defaultPadding * 1.25),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: product.title!,
              child: Center(child: SvgPicture.asset(product.image!, height: 120,)),
            ),
            Text(
              product.title!,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            Text(
              product.brand!,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Color(0xFF05668D)),
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Price(amount: product.price),
                const FavButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}