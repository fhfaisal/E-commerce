import 'dart:ffi';

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
import '../../../common/widgets/roundedImage/rounded_image.dart';
import '../../../common/widgets/texts/section_heading.dart';
import '../../../common/widgets/verticalImageText/vertical_image_text.dart';
import '../controllers/home_controller.dart';
import '../widgets/categories.dart';
import '../widgets/home_appbar.dart';

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
                        AppSectionHeading(title: 'Popular Categories', action: false),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
              child: AppRoundedImage(
                imageUrl: AppImageStrings.banner1,
              ),
            )
          ],
        ),
      ),
    );
  }
}


