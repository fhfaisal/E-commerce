import 'package:ecommerce/app/common/widgets/roundedImage/rounded_image.dart';
import 'package:ecommerce/app/common/widgets/texts/brand_title_text_with_verify_icon.dart';
import 'package:ecommerce/app/common/widgets/texts/product_price.dart';
import 'package:ecommerce/app/common/widgets/texts/product_title.dart';
import 'package:ecommerce/app/utils/constants/enams.dart';
import 'package:ecommerce/app/utils/constants/image_strings.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/containers/circular_container.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      /// Price & Sale Price
      Row(
        children: [
          ///Price
          AppCircularContainer(
            height: 30,
            width: 60,
            color: AppColors.secondary.withOpacity(0.8),
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.sm, vertical: AppSizes.xs),
            borderRadius: AppSizes.borderRadius8,
            child: Text(
              '30%',
              style: Theme.of(context).textTheme.bodyLarge!.apply(),
              textAlign: TextAlign.center,
            ),
          ),

          ///Price
          const SizedBox(width: AppSizes.spaceBtwItems),
          const AppProductPriceText(price: '55', disable: true, lineThrough: true, lineThickness: 2),
          const SizedBox(width: AppSizes.spaceBtwItems),
          const AppProductPriceText(price: '32', isLarge: true),
        ],
      ),
      const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

      /// Title
      const AppProductTitleText(title: 'Nike Alphafly 3 Blueprint', textSmall: false),
      const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

      /// Stock Status
      const Row(
        children: [
          AppProductTitleText(title: 'Status', textSmall: false),
          SizedBox(width: AppSizes.spaceBtwItems),
          AppProductTitleText(title: 'In stock', textSmall: false),
        ],
      ),
      const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

      /// Brand
      const Row(
        children: [
          AppRoundedImage(
            imageUrl: AppImageStrings.shoes,
            height: 32,
            width: 32,
          ),
          AppBrandTitleTextWithVerifyIcon(title: 'Nike',brandTextSize: TextSizes.medium),
        ],
      )
    ]);
  }
}
