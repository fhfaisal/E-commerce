
import 'package:ecommerce/app/modules/home/widgets/product_card_vertical.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/constants/image_strings.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../common/widgets/containers/primary_header_container.dart';
import '../../../common/widgets/containers/search_container.dart';
import '../../../common/widgets/layouts/gridview_layout.dart';
import '../../../common/widgets/texts/section_heading.dart';
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
            const AppPrimaryHeaderContainer(
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
                        SizedBox(height: AppSizes.spaceBtwSections),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///Slider -Banner
            const PromotionalSlider(banners: [AppImageStrings.banner1, AppImageStrings.banner2, AppImageStrings.banner3]),
            //SizedBox(height: AppSizes.spaceBtwItems),
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.paddingMd),
              child: AppSectionHeading(title: 'Popular Products',action: true,onPressed: () => Get.toNamed(Routes.ALL_PRODUCTS),),
            ),

            ///Popular products
            AppGridViewLayout(
              itemCount: 4,
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.paddingMd),
              itemBuilder: (_, index) => ProductCardVertical(
                onTap: () => Get.toNamed(Routes.PRODUCT_DETAILS),
              ),),
            const SizedBox(height: AppSizes.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}


