import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/containers/circular_container.dart';
import '../../../common/widgets/roundedImage/rounded_image.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../controllers/home_controller.dart';
class PromotionalSlider extends StatelessWidget {
  const PromotionalSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
                onPageChanged: (index, reason) => controller.carousalCurrentIndex.value = index,
                //height: AppHelperFunction.screenHeight()*0.15,
              ),
              items: banners
                  .map((url) => AppRoundedImage(
                imageUrl: url,
                fit: BoxFit.cover,
              ))
                  .toList(),
            ),
            Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < banners.length; i++)
                  AppCircularContainer(
                    margin: AppSizes.spaceBtwItems4,
                    width: 20,
                    height: 5,
                    color: controller.carousalCurrentIndex.value == i ? AppColors.primary : AppColors.grey,
                  )
              ],
            ))
          ],
        ));
  }
}