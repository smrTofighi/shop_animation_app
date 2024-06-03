import 'package:flutter/material.dart';
import 'package:shop_animation_app/constant.dart';
import 'package:shop_animation_app/screens/details/widgets/rounded_icon_bottuon.dart';


class CartCounter extends StatelessWidget {
  const CartCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: primaryColor2,
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: Row(
        children: [
          RoundIconBtn(
            iconData: Icons.remove,
            color: Colors.black38,
            press: () {},
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
                horizontal: defaultPadding / 4),
            child: Text(
              "1",
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w800),
            ),
          ),
          RoundIconBtn(
            iconData: Icons.add,
            press: () {},
          ),
        ],
      ),
    );
  }
}