import 'package:flutter/material.dart';
import 'package:shop_animation_app/constant.dart';
import 'package:shop_animation_app/gen/assets.gen.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: headerHeight,
      color: Colors.white,
      padding: const EdgeInsets.all(defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning!",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                "Mohamamd Tofighi",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.black54),
              )
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(Assets.images.profile.path),
          )
        ],
      ),
    );
  }
}