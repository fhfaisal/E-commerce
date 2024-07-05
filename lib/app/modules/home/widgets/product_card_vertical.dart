import 'package:ecommerce/app/common/widgets/containers/circular_container.dart';
import 'package:ecommerce/app/common/widgets/roundedImage/rounded_image.dart';
import 'package:ecommerce/app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/styles/shadow_style.dart';
import '../../../common/widgets/circularIcon/circular_icon.dart';
import '../../../common/widgets/texts/product_price.dart';
import '../../../common/widgets/texts/product_title.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);

    /// Container with side paddings, color, edges, radius and shadow.
    return Container(
      width: 180,
      decoration: BoxDecoration(
        boxShadow: [AppShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        color: dark ? AppColors.darkerGrey : AppColors.white,
      ),
      child: Column(
        children: [
          ///Thumbnail,wishlist button discount tag
          AppCircularContainer(
            height: 180,
            borderRadius: AppSizes.borderRadius8,
            color: dark ? AppColors.darkerGrey : AppColors.white,
            child: Stack(
              children: [
                ///Image
                const AppRoundedImage(
                  fit: BoxFit.cover,
                  width: double.maxFinite,
                  applyImageRadius: true,
                  borderRadius: AppSizes.borderRadius8,
                  imageUrl: AppImageStrings.product3,
                ),

                ///Sale tag
                Positioned(
                  top: 12,
                  child: AppCircularContainer(
                    height: 30,
                    width: 60,
                    color: Theme.of(context).colorScheme.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: AppSizes.sm, vertical: AppSizes.xs),
                    borderRadius: AppSizes.borderRadius8,
                    child: Text(
                      '30%',
                      style: Theme.of(context).textTheme.bodyLarge!.apply(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                ///Wish-button
                const Positioned(top: 0, right: 0, child: AppCircularIcon(icon: Icon(Iconsax.heart5,color: Colors.red,),),),
              ],
            ),
          ),

          ///Product Details
          Padding(
            padding: const EdgeInsets.only(left: AppSizes.sm),
            child: Column(
              children: [
                ///Title
                const AppProductTitleText(title: 'watch uashgfuigasiufgsgafgahgzvgsdgfwi', maxLine: 2),
                const SizedBox(height: AppSizes.spaceBtwItems / 2),
                Row(
                  children: [
                    Flexible(
                        child: Text('Brand',
                            style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColors.tertiaryText),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1)),
                    const SizedBox(width: AppSizes.spaceBtwItems / 2),
                    const Icon(
                      Iconsax.verify5,
                      color: AppColors.primary,
                      size: AppSizes.iconSm,
                    )
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: AppSizes.sm),
                child: AppProductPriceText(
                  price: '15',
                  isLarge: true,
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
    );
  }
}
