import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';

class AppVerticalImageText extends StatelessWidget {
  const AppVerticalImageText({
    super.key,
    this.backgroundColor,
    this.textColor,
    required this.text,
    required this.image,
  });

  final Color? backgroundColor, textColor;
  final String text, image;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
      child: Column(
        children: [
          Container(
            height: 56,
            width: 56,
            padding: const EdgeInsets.all(AppSizes.sm),
            decoration:
                BoxDecoration(color: backgroundColor ?? (dark ? AppColors.black : AppColors.white), shape: BoxShape.circle),
            child: Center(
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                color: dark ? AppColors.light : AppColors.dark,
              ),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems / 2),
          SizedBox(
              width: 55,
              child: Center(
                  child: Text(
                text,
                style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor ?? AppColors.light),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )))
        ],
      ),
    );
  }
}
