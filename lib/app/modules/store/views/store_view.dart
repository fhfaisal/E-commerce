import 'package:ecommerce/app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce/app/common/widgets/appbar/custom_tabbar.dart';
import 'package:ecommerce/app/common/widgets/containers/search_container.dart';
import 'package:ecommerce/app/common/widgets/layouts/gridview_layout.dart';
import 'package:ecommerce/app/common/widgets/shoppingCard/counting_card.dart';
import 'package:ecommerce/app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/brand/brands_card.dart';
import '../../navigationBar/controllers/navigation_bar_controller.dart';
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
            //leadingIcon: Iconsax.arrow_left,
            //leadingOnPressed: () => NavigationBarController.instance.screen[NavigationBarController.instance.selectedIndex.value=0],
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
                            AppSectionHeading(title: 'Feature Brands',onPressed: () =>Get.toNamed(Routes.ALL_BRANDS) ,),
                            const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

                            ///Brands Grid
                            AppGridViewLayout(
                              itemCount: 4,
                              mainAxisExtent: 80,
                              itemBuilder: (context, index) => const AppBrandsCard(),
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
