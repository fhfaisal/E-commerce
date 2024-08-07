import 'package:ecommerce/app/common/widgets/texts/read_more_text.dart';
import 'package:ecommerce/app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/app/modules/productDetails/widgets/product_attributes.dart';
import 'package:ecommerce/app/modules/productDetails/widgets/product_meta_data.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_details_controller.dart';
import '../widgets/bottom_add_to_card.dart';
import '../widgets/product_details_image.dart';
import '../widgets/rating_and_share.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const BottomAddToCard(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Product Image Slider
            const ProductDetailsImage(),

            Padding(
              padding: const EdgeInsets.fromLTRB(AppSizes.defaultSpace, 0, AppSizes.defaultSpace, AppSizes.defaultSpace),
              child: Column(
                children: [
                  ///Rating and share button
                  const ProductRatingAndShare(),

                  ///Product Title Stock & Brand
                  const ProductMetaData(),
                  const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

                  ///Product Attribute
                  const ProductAttributes(),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  ///Checkout
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: () {}, child: const Text('Checkout')),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  ///Description
                  const AppSectionHeading(
                    title: 'Description',
                    action: false,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                   const AppReadMoreText(
                     text: 'This is the Description of the Product and it can go up to max 4 lines.This is the Description of the Product and it can go up to max 4 lines.This is the Description of the Product and it can go up to max 4 lines.This is the Description of the Product and it can go up to max 4 lines.',
                   ),

                  ///Review
                  const Divider(),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppSectionHeading(title: 'Reviews(159)',action: false),
                      IconButton(onPressed: ()=>Get.toNamed(Routes.REVIEWS_AND_RATING), icon: const Icon(Icons.arrow_forward_ios))
                      
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



