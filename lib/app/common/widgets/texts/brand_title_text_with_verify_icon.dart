import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enams.dart';
import '../../../utils/constants/sizes.dart';
import 'brand_text_title.dart';

class AppBrandTitleTextWithVerifyIcon extends StatelessWidget {
  const AppBrandTitleTextWithVerifyIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = AppColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int? maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: AppBrandTitleText(
          title: title,
          textAlign: textAlign,
          maxLines: maxLines,
          color: textColor??AppColors.tertiaryText,
          brandTextSize: brandTextSize,
        )),
        const SizedBox(width: AppSizes.spaceBtwItems / 2),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: AppSizes.iconSm,
        )
      ],
    );
  }
}
