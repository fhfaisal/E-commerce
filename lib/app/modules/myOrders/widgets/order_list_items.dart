import 'package:ecommerce/app/common/widgets/circularIcon/circular_icon.dart';
import 'package:ecommerce/app/common/widgets/containers/circular_container.dart';
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
        itemCount: 10,
        separatorBuilder: (context, index) => const SizedBox(height: AppSizes.spaceBtwItems),
        itemBuilder: (context, index) => AppCircularContainer(
              paddingAll: AppSizes.md,
              showBorder: true,
              borderRadius: AppSizes.borderRadius16,
              color: dark ? AppColors.dark : AppColors.light,
              child: Column(
                children: [
                  ///Order Status

                  Row(
                    children: [
                      Icon(Iconsax.ship, color: dark ? AppColors.white : AppColors.black),
                      const SizedBox(width: AppSizes.spaceBtwItems),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Processing",
                                    style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColors.primary)),
                                Text("14-Nov-2024", style: Theme.of(context).textTheme.bodyLarge),
                              ],
                            ),
                            Icon(
                              Iconsax.arrow_right_34,
                              color: dark ? AppColors.white : AppColors.black,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  Row(
                    children: [
                      Icon(Iconsax.tag, color: dark ? AppColors.white : AppColors.black),
                      const SizedBox(width: AppSizes.spaceBtwItems),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Order", style: Theme.of(context).textTheme.labelSmall),
                                Text("[#WF46Df]", style: Theme.of(context).textTheme.bodyLarge),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Icon(Iconsax.calendar, color: dark ? AppColors.white : AppColors.black),
                      const SizedBox(width: AppSizes.spaceBtwItems),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Shipping Date", style: Theme.of(context).textTheme.labelSmall),
                                Text("14-Nov-2024", style: Theme.of(context).textTheme.bodyLarge),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ));
  }
}
