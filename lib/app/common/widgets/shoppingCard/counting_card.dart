import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    final dark=AppHelperFunction.isDarkMode(context);
    return Stack(
      children: [
        IconButton(onPressed: () => Get.toNamed(Routes.CARD), icon: Icon(Iconsax.shopping_bag,color: color?? (dark?AppColors.white:AppColors.dark))),
        Positioned(
            right: 0,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                  color: background??(dark?AppColors.white:AppColors.dark),
                  shape: BoxShape.circle
              ),
              child: Center(child: Text(text??'2',style: Theme.of(context).textTheme.labelLarge!.apply(color: (dark?AppColors.black:AppColors.white),fontSizeFactor: 1),),),
            ))
      ],
    );
  }
}