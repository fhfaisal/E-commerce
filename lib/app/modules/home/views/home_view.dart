import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/app/common/widgets/containers/circular_container.dart';
import 'package:ecommerce/app/modules/home/widgets/product_card_vertical.dart';
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/constants/image_strings.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/device/device_utility.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../common/widgets/containers/primary_header_container.dart';
import '../../../common/widgets/containers/search_container.dart';
import '../../../common/widgets/layouts/gridview_layout.dart';
import '../../../common/widgets/roundedImage/rounded_image.dart';
import '../../../common/widgets/texts/section_heading.dart';
import '../../../common/widgets/verticalImageText/vertical_image_text.dart';
import '../controllers/home_controller.dart';
import '../widgets/categories.dart';
import '../widgets/home_appbar.dart';
import '../widgets/promotional_slider.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            ///Header Section
            AppPrimaryHeaderContainer(
              child: Column(
                children: [

                  ///AppBar
                  HomeAppBar(),
                  SizedBox(height: AppSizes.spaceBtwSections),

                  /// Search Bar
                  AppSearchContainer(text: 'Search in store'),
                  SizedBox(height: AppSizes.spaceBtwSections),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
                    child: Column(
                      children: [

                        ///Heading
                        AppSectionHeading(title: 'Popular Categories', action: false,textColor: AppColors.white),
                        SizedBox(height: AppSizes.spaceBtwItems),

                        ///Categories
                        HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///Slider -Banner
            const PromotionalSlider(banners: [AppImageStrings.banner1, AppImageStrings.banner2, AppImageStrings.banner3]),
            //SizedBox(height: AppSizes.spaceBtwItems),
            const Padding(
              padding: EdgeInsets.only(left: AppSizes.paddingMd),
              child: AppSectionHeading(title: 'Popular Products',action: true),
            ),

            ///Popular products
            AppGridViewLayout(
              itemCount: 4,
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.paddingMd),
              itemBuilder: (_, index) => const ProductCardVertical(),),
            const SizedBox(height: AppSizes.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}


