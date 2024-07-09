import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/appbar/custom_appbar.dart';
import '../../../common/widgets/circularIcon/circular_icon.dart';
import '../../../common/widgets/customShape/curvedEdges/curved_edge_widget.dart';
import '../../../common/widgets/roundedImage/circular_image.dart';
import '../../../common/widgets/roundedImage/rounded_image.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
class ProductDetailsImage extends StatelessWidget {
  const ProductDetailsImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunction.isDarkMode(context);
    return AppCurvedEdgeWidget(
      child: Container(
        color: dark ? AppColors.darkerGrey : AppColors.light,
        child: Stack(
          children: [

            ///Main Image
            AppCircularImage(
              height: 400,
              backgroundColor: dark ? AppColors.darkerGrey : AppColors.light,
              width: double.maxFinite,
              //fit: BoxFit.cover,
              borderRadius: AppSizes.md,
              imageUrl: AppImageStrings.product8,
              padding: AppSizes.productImageRadius * 2,
            ),

            ///Image Slider
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 60,
                  child: ListView.separated(
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => const SizedBox(width: AppSizes.spaceBtwItems,),
                    itemBuilder: (_, __) =>
                        AppRoundedImage(
                          applyImageRadius: false,
                          height: 80,
                          border: Border.all(color: AppColors.primary),
                          backgroundColor: dark ? AppColors.dark : AppColors.white,
                          padding: const EdgeInsets.all(AppSizes.sm),
                          borderRadius: AppSizes.md,
                          imageUrl: AppImageStrings.product8,
                        ),
                  ),
                ),
              ),
            ),

            ///AppBar Icon
            const AppAppBar(
              actions: [
                AppCircularIcon(icon: Icon(Iconsax.heart5,color: AppColors.white,))
              ],
            )

          ],
        ),
      ),
    );
  }
}