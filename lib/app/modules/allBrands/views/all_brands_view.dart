import 'package:ecommerce/app/common/widgets/brand/sorted_product.dart';
import 'package:ecommerce/app/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../common/widgets/appbar/custom_appbar.dart';
import '../../../common/widgets/brand/brands_card.dart';
import '../../../common/widgets/layouts/gridview_layout.dart';
import '../../../utils/constants/sizes.dart';
import '../controllers/all_brands_controller.dart';
import '../widgets/brands_details.dart';

class AllBrandsView extends GetView<AllBrandsController> {
  const AllBrandsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(title: Text('Popular Products')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSizes.defaultSpace,
            0,
            AppSizes.defaultSpace,
            AppSizes.defaultSpace,
          ),
          child: Column(
            children: [
              ///Heading
              const AppSectionHeading(title: 'Brands', action: false),
              const SizedBox(height: AppSizes.spaceBtwItems),

              ///Brands
              AppGridViewLayout(
                mainAxisExtent: 80,
                itemCount: 10,
                itemBuilder: (context, p1) => AppBrandsCard(
                  onTap: () => Get.to(() => const BrandDetails()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
