import 'package:ecommerce/app/modules/home/controllers/home_controller.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../roundedImage/circular_image.dart';
class AppUserProfileTile extends StatelessWidget {
  const AppUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(HomeController());
    return ListTile(
      leading: const AppCircularImage(
          borderRadius: 500,
          fit: BoxFit.cover,
          imageUrl: AppImageStrings.product2,
          width: 50,
          height: 50,
          padding: 0),
      title: Obx(()=>Text(controller.user.value.fullName, style: Theme.of(context).textTheme.headlineSmall!.apply(color: AppColors.white))),
      subtitle: Obx(() =>Text(controller.user.value.email,
          style: Theme.of(context).textTheme.bodyMedium!.apply(color: AppColors.white))),
      trailing: IconButton(onPressed: () => Get.toNamed(Routes.PROFILE), icon: const Icon(Iconsax.edit,color: AppColors.white,)),
    );
  }
}