import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../containers/circular_container.dart';
import 'brands_card.dart';
class AppBrandShowCase extends StatelessWidget {
  const AppBrandShowCase({
    super.key, required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return AppCircularContainer(
      showBorder: true,
      borderRadius: AppSizes.borderRadius16,
      borderColor: AppColors.darkerGrey,
      color: Colors.transparent,
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      paddingAll: AppSizes.md,
      child: Column(
        children: [
          ///Brands with product count
          const AppBrandsCard(showBorder: false,),
          const SizedBox(height: AppSizes.spaceBtwItems),

          ///Brands top 3 products
          Row(
            children: images.map((image) => brandTopProductImagesWidget(image, context)).toList(),
          )
        ],
      ),

    );
  }
  Widget brandTopProductImagesWidget(String image,context){
    return Expanded(
      child: AppCircularContainer(
        height: 100,
        color: AppHelperFunction.isDarkMode(context)?AppColors.darkerGrey:AppColors.light,
        paddingAll: AppSizes.md,
        borderRadius: AppSizes.borderRadius4,
        margin: const EdgeInsets.only(right: AppSizes.sm),
        child: Image(fit: BoxFit.contain,image: AssetImage(image),),
      ),
    );
  }
}