import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_animation_app/constant.dart';import 'package:shop_animation_app/controllers/product_controller.dart';
import 'package:shop_animation_app/screens/details/widgets/cart_details_view_card.dart';

class CartDetailsView extends StatelessWidget {
  const CartDetailsView({super.key});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Cart", style: Theme.of(context).textTheme.bodyMedium),
          GetBuilder<ProductController>(
            builder: (controller) => ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: controller.cart.length,
              itemBuilder: (context, index) => CartDetailsViewCard(
                product: controller.cart[index],
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
              onPressed: () {},
              child: GetBuilder<ProductController>(builder: (controller) =>  Text(
                "Next - \$${controller.totalPrice.value}",
                style: const TextStyle(color: Colors.white),
              ),)
            ),
          )
        ],
      ),
    );
  }
}
