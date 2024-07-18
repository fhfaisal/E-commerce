import 'package:ecommerce/app/common/widgets/brand/sorted_product.dart';
import 'package:ecommerce/app/modules/home/widgets/product_card_vertical.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/appbar/custom_appbar.dart';
import '../../../common/widgets/brand/brands_card.dart';
import '../../../common/widgets/layouts/gridview_layout.dart';
import '../../../common/widgets/texts/section_heading.dart';
import '../../../utils/constants/sizes.dart';

class BrandDetails extends StatelessWidget {
  const BrandDetails({super.key});

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
              AppBrandsCard(),
              const SizedBox(height: AppSizes.spaceBtwItems),

              ///Brands
              SortedProducts()
            ],
          ),
        ),
      ),
    );
  }
}
