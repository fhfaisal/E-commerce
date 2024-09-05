import 'package:ecommerce/app/data/repository/user/user_repository.dart';
import 'package:ecommerce/app/modules/home/controllers/home_controller.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../modules/login/controllers/user_controller.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../loaders/shimmer_loader.dart';
import '../roundedImage/rounded_image.dart';
class AppUserProfileTile extends StatelessWidget {
  const AppUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(HomeController());
    return ListTile(
      leading: Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle
        ),
        child: Obx(() {
          final controller=Get.put(UserController());
          final networkImage=controller.user.value.profilePicture;
          final image=networkImage.isNotEmpty?networkImage:AppImageStrings.user;
          return controller.imgLoading.value?
          const ShimmerLoading()
              :AppRoundedImage(
            borderRadius: 200,
            isNetworkImage: networkImage.isNotEmpty?true:false,
            imageUrl: image,fit: BoxFit.cover,);
        }),
      ),
      title: Obx(()=>Text(controller.user.value.fullName, style: Theme.of(context).textTheme.headlineSmall!.apply(color: AppColors.white))),
      subtitle: Obx(() =>Text(controller.user.value.email,
          style: Theme.of(context).textTheme.bodyMedium!.apply(color: AppColors.white))),
      trailing: IconButton(onPressed: () => Get.toNamed(Routes.PROFILE), icon: const Icon(Iconsax.edit,color: AppColors.white,)),
    );
  }
}