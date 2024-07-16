import 'package:ecommerce/app/common/widgets/containers/circular_container.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/circularIcon/circular_icon.dart';
import '../../../common/widgets/roundedImage/rounded_image.dart';
import '../../../common/widgets/texts/brand_title_text_with_verify_icon.dart';
import '../../../common/widgets/texts/product_price.dart';
import '../../../common/widgets/texts/product_title.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal(
      {super.key,
      required this.thumbnailImage,
      required this.saleTag,
      required this.productTitleText,
      required this.brandTitleText,
      required this.productPriceText});

  final String thumbnailImage, productTitleText, brandTitleText;
  final double productPriceText;
  final int saleTag;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Container(
      width: 310,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        color: dark ? AppColors.darkerGrey : AppColors.lightContainer,
      ),
      child: Row(
        children: [
          /// Thumbnail image
          AppCircularContainer(
              height: 120,
              borderRadius: AppSizes.borderRadius8,
              paddingAll: AppSizes.sm,
              child: Stack(
                children: [
                  ///Image
                  AppRoundedImage(
                      backgroundColor: dark ? AppColors.darkerGrey : AppColors.lightContainer,
                      height: 120,
                      width: 120,
                      applyImageRadius: true,
                      imageUrl: thumbnailImage),

                  ///Sale tag
                  Positioned(
                    top: 0,
                    left: 0,
                    child: AppCircularContainer(
                      color: Theme.of(context).colorScheme.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: AppSizes.sm, vertical: AppSizes.xs),
                      borderRadius: AppSizes.borderRadius8,
                      child: Text(
                        '${saleTag.toString()}%',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  ///Wish-button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: AppCircularIcon(
                      icon: Icon(
                        Iconsax.heart5,
                        color: Colors.red,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: AppSizes.sm, right: AppSizes.sm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppProductTitleText(title: productTitleText, maxLine: 2),
                      const SizedBox(height: AppSizes.spaceBtwItems / 2),
                      AppBrandTitleTextWithVerifyIcon(title: brandTitleText, textColor: AppColors.tertiaryText),
                      const SizedBox(height: AppSizes.spaceBtwItems / 2),
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: AppSizes.sm),
                        child: AppProductPriceText(
                          price: productPriceText.toString(),
                          isLarge: true,
                          maxLine: 1,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: dark ? AppColors.primary : AppColors.dark,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(AppSizes.cardRadiusMd),
                            bottomRight: Radius.circular(AppSizes.productImageRadius),
                          )),
                      child: const SizedBox(
                          height: AppSizes.iconLg * 1.2,
                          width: AppSizes.iconLg * 1.2,
                          child: Icon(
                            Iconsax.add,
                            color: AppColors.white,
                          )),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
