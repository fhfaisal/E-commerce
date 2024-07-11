import 'package:ecommerce/app/common/widgets/circularIcon/circular_icon.dart';
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/helpers/helper_function.dart';

class BottomAddToCard extends StatelessWidget {
  const BottomAddToCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace, vertical: AppSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? AppColors.darkerGrey : AppColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(AppSizes.cardRadiusLg),
            topRight: Radius.circular(AppSizes.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              AppCircularIcon(backgroundColor: dark?AppColors.primary:AppColors.dark, width: 40, height: 40, icon: Icon(Iconsax.minus, color: AppColors.white)),
              const SizedBox(width: AppSizes.spaceBtwItems),
              Text('3',style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(width: AppSizes.spaceBtwItems),
              AppCircularIcon(backgroundColor:dark?AppColors.primary:AppColors.dark, width: 40, height: 40, icon: Icon(Iconsax.add, color: AppColors.white)),
            ],
          ),
          ElevatedButton(onPressed: (){}, child: const Text('Add to card'))
        ],
      ),
    );
  }
}
