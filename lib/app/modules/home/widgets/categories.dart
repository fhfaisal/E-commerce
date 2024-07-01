import 'package:flutter/material.dart';

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
            AppVerticalImageText(text: categories.elementAt(index).text, image: categories.elementAt(index).image),
      ),
    );
  }
}
 List<AppVerticalImageText> categories = [
  AppVerticalImageText(text: "Men's Fashion", image: AppImageStrings.menFashion),
  AppVerticalImageText(text: "Women's Fashion", image: AppImageStrings.womenFashion),
  AppVerticalImageText(text: "Watches", image: AppImageStrings.watches),
  AppVerticalImageText(text: "Health & Beauty", image: AppImageStrings.beauty),
  AppVerticalImageText(text: "Bags", image: AppImageStrings.backpack),
  AppVerticalImageText(text: "Mother & Baby", image: AppImageStrings.motherAndBaby),
  AppVerticalImageText(text: "Sports", image: AppImageStrings.sports),
  AppVerticalImageText(text: "Home Appliances", image: AppImageStrings.homeAppliances),
  AppVerticalImageText(text: "Electronics Device", image: AppImageStrings.electronics),
];