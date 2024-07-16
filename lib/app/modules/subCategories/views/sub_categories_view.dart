import 'package:ecommerce/app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce/app/common/widgets/containers/circular_container.dart';
import 'package:ecommerce/app/common/widgets/roundedImage/rounded_image.dart';
import 'package:ecommerce/app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/app/modules/subCategories/widgets/product_card_horizantal.dart';
import 'package:ecommerce/app/utils/constants/image_strings.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sub_categories_controller.dart';

class SubCategoriesView extends GetView<SubCategoriesController> {
  const SubCategoriesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(title: Text('Sub-Categories')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              ///Banner
              const AppRoundedImage(imageUrl: AppImageStrings.banner2),
              const SizedBox(height: AppSizes.spaceBtwItems),

              ///sub-Categories
              Column(
                children: [
                  ///Heading
                  const AppSectionHeading(title: "Shoes"),
                  ///Product Horizontal
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                        separatorBuilder: (context, index) => const SizedBox(width: AppSizes.spaceBtwItems),
                        itemBuilder: (context, index) => const ProductCardHorizontal(
                          brandTitleText: 'Nike',
                          productPriceText: 20,
                          productTitleText: 'Nike Alpha-fly 3 Blueprint ',
                          saleTag: 30,
                          thumbnailImage: AppImageStrings.product9,
                        ),),
                  )

                ],
              ),
              Column(
                children: [
                  ///Heading
                  const AppSectionHeading(title: "Watch"),
                  ///Product Horizontal
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                        separatorBuilder: (context, index) => const SizedBox(width: AppSizes.spaceBtwItems),
                        itemBuilder: (context, index) => const ProductCardHorizontal(
                          brandTitleText: 'Nike',
                          productPriceText: 20,
                          productTitleText: 'Nike Alpha-fly 3 Blueprint ',
                          saleTag: 50,
                          thumbnailImage: AppImageStrings.product10,
                        ),),
                  )

                ],
              ),
              Column(
                children: [
                  ///Heading
                  const AppSectionHeading(title: "Shoes"),
                  ///Product Horizontal
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                        separatorBuilder: (context, index) => const SizedBox(width: AppSizes.spaceBtwItems),
                        itemBuilder: (context, index) => const ProductCardHorizontal(
                          brandTitleText: 'Nike',
                          productPriceText: 20,
                          productTitleText: 'Nike Alpha-fly 3 Blueprint ',
                          saleTag: 30,
                          thumbnailImage: AppImageStrings.product8,
                        ),),
                  )

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
