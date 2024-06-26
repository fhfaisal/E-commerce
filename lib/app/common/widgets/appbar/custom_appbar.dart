import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({super.key, this.title, this.actions, this.leadingIcon, this.leadingOnPressed, this.showBackArrow = true});

  final VoidCallback? leadingOnPressed;
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: title,
          actions: actions,
          leading: showBackArrow
              ? IconButton(onPressed: () => Get.back(), icon: const Icon(Iconsax.arrow_left))
              : leadingIcon != null
                  ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon))
                  : null,
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppDeviceUtility.getAppBarHeight());
}
