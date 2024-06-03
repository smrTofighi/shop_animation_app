import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shop_animation_app/constant.dart';
import 'package:shop_animation_app/controllers/product_controller.dart';
import 'package:shop_animation_app/models/product.dart';
import 'package:shop_animation_app/widgets/price_model.dart';

class CartDetailsViewCard extends StatelessWidget {
  const CartDetailsViewCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.white,
        child: SvgPicture.asset(product.image!),
      ),
      title: Text(
        product.title!,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontWeight: FontWeight.bold),
      ),
      trailing: FittedBox(
        child: Row(
          children: [
            Price(amount: product.price),
            GetBuilder<ProductController>(
              builder: (controller) => Text(
                "  x ${product.count}",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
