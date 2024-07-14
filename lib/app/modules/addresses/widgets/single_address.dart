import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/containers/circular_container.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({
    super.key,
    required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return AppCircularContainer(
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      padding: const EdgeInsets.all(AppSizes.md),
      borderRadius: AppSizes.borderRadius16,
      width: double.infinity,
      showBorder: true,
      color: selectedAddress
          ? dark
              ? AppColors.primary
              : AppColors.dark
          : Colors.transparent,
      borderColor: selectedAddress
          ? dark
              ? Colors.transparent
              : AppColors.primary
          : AppColors.grey,
      child: Stack(
        children: [
          Positioned(
            top: 5,
            right: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? AppColors.light
                      : AppColors.white
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Faisal Hasan',
                  style: selectedAddress
                      ? Theme.of(context).textTheme.titleMedium!.apply(color: AppColors.white)
                      : Theme.of(context).textTheme.titleMedium),
              Text('016444***9*',
                  style: selectedAddress
                      ? Theme.of(context).textTheme.bodyMedium!.apply(color: AppColors.white)
                      : Theme.of(context).textTheme.bodyMedium),
              Text(
                "data akfb asjkfbsd hgbsdai hpbgiudaub giuqe rughreigh eurim gheuri opgn ij",
                style: selectedAddress
                    ? Theme.of(context).textTheme.labelSmall!.apply(color: AppColors.white)
                    : Theme.of(context).textTheme.labelSmall,
                softWrap: true,
              )
            ],
          )
        ],
      ),
    );
  }
}
