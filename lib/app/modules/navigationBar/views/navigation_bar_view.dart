
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/navigation_bar_controller.dart';

class NavigationBarView extends GetView<NavigationBarController> {
  const NavigationBarView({super.key});
  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
                (Set<MaterialState> states) => states.contains(MaterialState.selected)
                ? TextStyle(color: dark?AppColors.white:AppColors.black)
                : TextStyle(color: dark?AppColors.white.withOpacity(0.2):AppColors.black.withOpacity(0.2)),
          ),
          iconTheme: MaterialStateProperty.resolveWith<IconThemeData>(
                (Set<MaterialState> states) => IconThemeData(
              color: states.contains(MaterialState.selected)
                  ? (dark ? AppColors.white : AppColors.black)
                  : (dark ? AppColors.white.withOpacity(0.2) : AppColors.black.withOpacity(0.2)),
            ),
          ),
        ),
        child: NavigationBar(
        elevation: 0,
        overlayColor: MaterialStateProperty.all(AppColors.white),
        backgroundColor: dark?AppColors.black:AppColors.light,
        indicatorColor: dark?AppColors.white.withOpacity(0.2):AppColors.black.withOpacity(0.2),
        //indicatorShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        selectedIndex: controller.selectedIndex.value,
        onDestinationSelected: (value) => controller.selectedIndex.value=value,
        destinations:const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'User'),
        ],
      ))),
      body: Obx(() => controller.screen[controller.selectedIndex.value])
    );
  }
}
