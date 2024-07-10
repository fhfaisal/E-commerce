import 'package:ecommerce/app/common/widgets/containers/circular_container.dart';
import 'package:ecommerce/app/common/widgets/texts/product_price.dart';
import 'package:ecommerce/app/common/widgets/texts/product_title.dart';
import 'package:ecommerce/app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../common/widgets/choiceChip/choice_chip.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Column(
      children: [
        ///Selected attributes and color
        AppCircularContainer(
          color: dark ? AppColors.darkerGrey : AppColors.grey,
          paddingAll: AppSizes.md,
          borderRadius: AppSizes.borderRadius16,
          child: const Column(
            children: [
              ///Title price and stock status
              Row(
                children: [
                  AppSectionHeading(title: 'Variation', action: false),
                  SizedBox(width: AppSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          AppProductTitleText(title: 'Price :'),
                          SizedBox(width: AppSizes.spaceBtwItems / 1.5),

                          ///Actual price
                          AppProductPriceText(
                            price: '55',
                            lineThrough: true,
                          ),
                          SizedBox(width: AppSizes.spaceBtwItems / 1.5),

                          ///Sell price
                          AppProductPriceText(price: '32'),
                        ],
                      ),
                      Row(
                        children: [
                          AppProductTitleText(
                            title: 'Status :',
                          ),
                          SizedBox(width: AppSizes.spaceBtwItems / 1.5),
                          AppProductTitleText(title: 'In stock', textSmall: false),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Variation Description
              SizedBox(height: AppSizes.spaceBtwItems / 1.5),
              AppProductTitleText(
                  title:
                      'This is the Description of the Product and it can go up to max 4 lines.This is the Description of the Product and it can go up to max 4 lines.This is the Description of the Product and it can go up to max 4 lines.This is the Description of the Product and it can go up to max 4 lines.',
                  textSmall: true,
                  maxLine: 4),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppSizes.spaceBtwItems / 1.5),
            const AppSectionHeading(title: 'Colors',action: false),
            Wrap(
              spacing: 8,
              children: [
                AppChoiceChip(text: 'Red', selected: false, onSelected: (value) {}),
                AppChoiceChip(text: 'Green', selected: false, onSelected: (value) {}),
                AppChoiceChip(text: 'Blue', selected: true, onSelected: (value) {}),
              ],
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            const AppSectionHeading(title: 'Size',action: false),
            Wrap(
              spacing: 8,
              children: [
                AppChoiceChip(text: 'EU 34', selected: true, onSelected: (value) {}),
                AppChoiceChip(text: 'EU 36', selected: false, onSelected: (value) {}),
                AppChoiceChip(text: 'EU 38', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
