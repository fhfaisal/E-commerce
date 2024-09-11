import 'package:ecommerce/app/common/widgets/roundedImage/rounded_image.dart';
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
    this.onTap,
    this.isNetworkImage = true,
  });

  final Color? backgroundColor, textColor;
  final String text, image;
  final bool isNetworkImage;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
        child: Column(
          children: [
            AppRoundedImage(
              imageUrl: image,
              isNetworkImage: isNetworkImage,
              fit: BoxFit.fitWidth,
              backgroundColor: backgroundColor,
              padding: const EdgeInsets.all(AppSizes.sm * 1.4),
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
      ),
    );
  }
}
