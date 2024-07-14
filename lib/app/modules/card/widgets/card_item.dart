import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/roundedImage/circular_image.dart';
import '../../../common/widgets/texts/brand_title_text_with_verify_icon.dart';
import '../../../common/widgets/texts/product_title.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunction.isDarkMode(context);
    return Row(
      children: [
        ///Image
        const AppCircularImage(
            padding: AppSizes.sm, height: 60, width: 60, imageUrl: AppImageStrings.product4),
        const SizedBox(width: AppSizes.spaceBtwItems),
        ///Title price size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBrandTitleTextWithVerifyIcon(title: 'Nike',textColor: dark?AppColors.white:AppColors.black,),
              const Flexible(child: AppProductTitleText(title:'Nike Alphafly 3 Blueprint bshkhuisdhaguihnadighduihu' ,textSmall:false,maxLine: 1,)),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: 'Color ',style: Theme.of(context).textTheme.labelSmall),
                        TextSpan(text: 'Green ',style: Theme.of(context).textTheme.labelMedium),
                        TextSpan(text: 'Size ',style: Theme.of(context).textTheme.labelSmall),
                        TextSpan(text: 'UK 08 ',style: Theme.of(context).textTheme.labelMedium),
                      ]
                  )
              ),
            ],
          ),
        )
      ],
    );
  }
}