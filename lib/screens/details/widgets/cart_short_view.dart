import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shop_animation_app/constant.dart';
import 'package:shop_animation_app/controllers/product_controller.dart';

class CardShortView extends StatelessWidget {
  const CardShortView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Cart",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(width: defaultPadding),
        Expanded(
          child: GetBuilder<ProductController>(
            builder: (controller) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.cart.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding / 2),
                  child: Hero(
                    tag: "${controller.cart[index].title!}_cartTag",
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: SvgPicture.asset(
                        controller.cart[index].image!,
                        height: 25,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        GetBuilder<ProductController>(
        
        
          builder: (controller) {
            return CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                controller.totalCount.value.toString(),
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: primaryColor),
              ),
            );
          },
        )
      ],
    );
  }
}
