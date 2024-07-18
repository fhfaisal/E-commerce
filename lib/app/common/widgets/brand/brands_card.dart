import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../containers/circular_container.dart';
import '../roundedImage/circular_image.dart';
import '../texts/brand_title_text_with_verify_icon.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enams.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
class AppBrandsCard extends StatelessWidget {
  const AppBrandsCard({
    super.key, this.showBorder=true, this.onTap,
  });
  final bool showBorder;
  final Callback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: AppCircularContainer(
          paddingAll: AppSizes.sm,
          showBorder: showBorder,
          borderRadius: AppSizes.borderRadius16,
          color: Colors.transparent,
          child: Row(
              children: [
                ///----Icon
                AppCircularImage(
                  fit: BoxFit.cover,
                  width: 40,
                  height: 40,
                  imageUrl: AppImageStrings.shoes,
                  isNetworkImage: false,
                  overlayColor: dark ? AppColors.black : AppColors.black,
                ),
                const SizedBox(width: AppSizes.spaceBtwSections / 4),

                ///---Text
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppBrandTitleTextWithVerifyIcon(
                          title: "Brand Name",
                          textAlign: TextAlign.left,
                          brandTextSize: TextSizes.medium,
                          textColor: dark ? AppColors.white : AppColors.black),
                      Text(
                        '120 Products',
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.labelSmall,
                      )
                    ],
                  ),
                )
              ])),
    );
  }
}