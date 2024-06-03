
import 'package:flutter/material.dart';
import 'package:shop_animation_app/constant.dart';


class Price extends StatelessWidget {
  const Price({
    super.key,
    required this.amount,
  });
  final double amount;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "\$",
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontWeight: FontWeight.w600, color: primaryColor),
        children: [
          TextSpan(
            text: amount.toString(),
            style: const TextStyle(color: Colors.black),
          ),
         
        ],
      ),
    );
  }
}
