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
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) =>
            AppVerticalImageText(
                onTap:() => Get.toNamed(Routes.SUB_CATEGORIES),
                text: categories.elementAt(index).text, image: categories.elementAt(index).image),
      ),
    );
  }
}
 List<AppVerticalImageText> categories = [
  const AppVerticalImageText(text: "Men's Fashion", image: AppImageStrings.menFashion),
  const AppVerticalImageText(text: "Women's Fashion", image: AppImageStrings.womenFashion),
  const AppVerticalImageText(text: "Watches", image: AppImageStrings.watches),
  const AppVerticalImageText(text: "Health & Beauty", image: AppImageStrings.beauty),
  const AppVerticalImageText(text: "Bags", image: AppImageStrings.backpack),
  const AppVerticalImageText(text: "Mother & Baby", image: AppImageStrings.motherAndBaby),
  const AppVerticalImageText(text: "Sports", image: AppImageStrings.sports),
  const AppVerticalImageText(text: "Home Appliances", image: AppImageStrings.homeAppliances),
  const AppVerticalImageText(text: "Electronics Device", image: AppImageStrings.electronics),
];