import 'package:ecommerce/app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce/app/common/widgets/appbar/custom_tabbar.dart';
import 'package:ecommerce/app/common/widgets/containers/circular_container.dart';
import 'package:ecommerce/app/common/widgets/containers/search_container.dart';
import 'package:ecommerce/app/common/widgets/layouts/gridview_layout.dart';
import 'package:ecommerce/app/common/widgets/roundedImage/circular_image.dart';
import 'package:ecommerce/app/common/widgets/roundedImage/rounded_image.dart';
import 'package:ecommerce/app/common/widgets/shoppingCard/counting_card.dart';
import 'package:ecommerce/app/common/widgets/texts/brand_title_text_with_verify_icon.dart';
import 'package:ecommerce/app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/app/modules/home/widgets/product_card_vertical.dart';
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/constants/enams.dart';
import 'package:ecommerce/app/utils/constants/image_strings.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/brand/brand_showcase.dart';
import '../../../common/widgets/texts/brand_text_title.dart';
import '../../../common/widgets/brand/brands_card.dart';
import '../controllers/store_controller.dart';
import '../widgets/categories.dart';

class StoreView extends GetView<StoreController> {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: AppAppBar(
            title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
            showBackArrow: false,
            actions: [
              AppShoppingCountingCard(onPressed: () {},),
            ],
          ),
          body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                    SliverAppBar(
                      automaticallyImplyLeading: false,
                      pinned: true,
                      floating: true,
                      backgroundColor: dark ? AppColors.dark : AppColors.white,
                      expandedHeight: 440,
                      flexibleSpace: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            const SizedBox(height: AppSizes.spaceBtwItems),
                            const AppSearchContainer(
                              text: 'Search in store',
                              padding: EdgeInsets.zero,
                            ),
                            const SizedBox(height: AppSizes.spaceBtwSections),

                            ///Feature Brands
                            const AppSectionHeading(title: 'Feature Brands'),
                            const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

                            ///Brands Grid
                            AppGridViewLayout(
                              itemCount: 4,
                              mainAxisExtent: 80,
                              itemBuilder: (context, index) => const BrandsCard(),
                            ),
                          ],
                        ),
                      ),
                      bottom: const AppTabBar(tabs: [
                        Tab(child: Text('Sports')),
                        Tab(child: Text('Furniture')),
                        Tab(child: Text('Electronics')),
                        Tab(child: Text('Clothes')),
                        Tab(child: Text('Cosmetics')),
                      ]),
                    )
                  ],
              body: const TabBarView(children: [
                AppCategoriesTab(),
                AppCategoriesTab(),
                AppCategoriesTab(),
                AppCategoriesTab(),
                AppCategoriesTab(),
              ]))),
    );
  }
}
