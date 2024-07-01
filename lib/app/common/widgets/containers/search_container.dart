import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_function.dart';

class AppSearchContainer extends StatelessWidget {
  const AppSearchContainer({
    super.key, this.icon, required this.text, this.showBorder=true,this.backgroundColor=true,
  });
  final IconData? icon;
  final String text;
  final bool showBorder,backgroundColor;

  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: Container(
        width: AppDeviceUtility.getScreenWidth(context),
        padding: const EdgeInsets.all(AppSizes.md),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.borderRadius16),
            color:backgroundColor? dark? AppColors.dark:AppColors.light:Colors.transparent,
            border: showBorder? Border.all(color: AppColors.grey):null
        ),
        child: Row(
          children: [
            Icon(icon??Iconsax.search_normal,color:dark?AppColors.white: AppColors.darkerGrey),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text(text,style: Theme.of(context).textTheme.bodyLarge!.apply(color: dark?AppColors.white:AppColors.darkerGrey))
          ],
        ),
      ),
    );
  }
}