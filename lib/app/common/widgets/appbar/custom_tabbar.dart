import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/helpers/helper_function.dart';

class AppTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If you want to add the background color to taps you have to wrap them in Material widget.
  /// To do that we need (PreferredSized) widget and that's why created custom class. (PreferredSizeWidget]

  const AppTabBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);

    return Material(
        color: dark ? AppColors.black : AppColors.white,
        child: TabBar(
          tabs: tabs,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          indicatorColor: AppColors.primary,
          labelColor: dark ? AppColors.white : AppColors.primary,
          unselectedLabelColor: AppColors.darkGrey,
        ) // TabBar
        );
  }

  @override

  Size get preferredSize => Size.fromHeight(AppDeviceUtility.getAppBarHeight());
}
