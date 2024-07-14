import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/circularIcon/circular_icon.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
class ProductQuantityWithAddRemoveButton extends StatelessWidget {
  const ProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunction.isDarkMode(context);
    return Row(
      children: [
        AppCircularIcon(backgroundColor: dark?AppColors.primary:AppColors.dark, width: 32, height: 32, icon: const Icon(Iconsax.minus, color: AppColors.white)),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Text('3',style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(width: AppSizes.spaceBtwItems),
        AppCircularIcon(backgroundColor:dark?AppColors.primary:AppColors.dark, width: 32, height: 32, icon: const Icon(Iconsax.add, color: AppColors.white)),
      ],
    );
  }
}