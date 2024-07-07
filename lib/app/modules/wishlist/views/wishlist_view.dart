import 'package:ecommerce/app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce/app/common/widgets/circularIcon/circular_icon.dart';
import 'package:ecommerce/app/common/widgets/layouts/gridview_layout.dart';
import 'package:ecommerce/app/modules/home/widgets/product_card_vertical.dart';
import 'package:ecommerce/app/modules/navigationBar/controllers/navigation_bar_controller.dart';
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/wishlist_controller.dart';

class WishlistView extends GetView<WishlistController> {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppAppBar(
          showBackArrow: false,
          title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            AppCircularIcon(
                height: AppSizes.buttonHeight,
                width: AppSizes.buttonWidth,
                onPressed:() => NavigationBarController.instance.selectedIndex.value=0,
                icon: Icon(
                  Iconsax.add,
                  size: AppSizes.iconLg,
                  color: AppHelperFunction.isDarkMode(context) ? AppColors.white : AppColors.black,
                ),
                backgroundColor: Colors.transparent)
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
          child: Column(
            children: [AppGridViewLayout(itemCount: 7, itemBuilder: (_, index) => const ProductCardVertical())],
          ),
        )));
  }
}
