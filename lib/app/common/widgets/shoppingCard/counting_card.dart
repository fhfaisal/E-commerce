import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
class AppShoppingCountingCard extends StatelessWidget {
  const AppShoppingCountingCard({
    super.key, required this.onPressed, this.color, this.text, this.background,
  });
  final Callback onPressed;
  final Color? color,background;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPressed, icon: Icon(Iconsax.shopping_bag,color: color?? AppColors.white,)),
        Positioned(
            right: 0,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                  color: background??AppColors.black,
                  shape: BoxShape.circle
              ),
              child: Center(child: Text(text??'2',style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColors.white,fontSizeFactor: 0.8),),),
            ))
      ],
    );
  }
}