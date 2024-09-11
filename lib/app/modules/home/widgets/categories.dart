import 'package:ecommerce/app/common/widgets/loaders/shimmer/categories_shimmer.dart';
import 'package:ecommerce/app/modules/home/controllers/category_controller.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/verticalImageText/vertical_image_text.dart';
import '../../../utils/constants/image_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoryController());
    return Obx(() {
      if (categoryController.loading.value) return const CategoriesShimmer();
      if (categoryController.featuredCategories.isEmpty) return const Text('No Data Found');
      return SizedBox(
        height: 80,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: categoryController.featuredCategories.length,
            itemBuilder: (context, index) {
              final category = categoryController.featuredCategories[index];
              return AppVerticalImageText(
                  onTap: () => Get.toNamed(Routes.SUB_CATEGORIES), text: category.name, image: category.image);
            }),
      );
    });
  }
}
