import 'package:ecommerce/app/modules/home/model/category_model.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/brand/brand_showcase.dart';
import '../../../common/widgets/layouts/gridview_layout.dart';
import '../../../common/widgets/texts/section_heading.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../home/widgets/product_card_vertical.dart';
class AppCategoriesTab extends StatelessWidget {
  const AppCategoriesTab({
    super.key, required this.category,
  });
final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      children: [
        Column(children: [
          ///Brands
          const AppBrandShowCase(images: [
            AppImageStrings.product1,
            AppImageStrings.product2,
            AppImageStrings.product3,
          ],),

          ///Title
          const AppSectionHeading(title: 'Product You May Like',action: false),
          const SizedBox(height: AppSizes.spaceBtwItems),
          AppGridViewLayout(
            itemCount: 4,
            itemBuilder: (context, index) => ProductCardVertical(onTap:() =>  Get.toNamed(Routes.PRODUCT_DETAILS)),)
        ],),
      ],
    );
  }
}
