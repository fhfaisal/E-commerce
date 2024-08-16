import 'package:ecommerce/app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce/app/common/widgets/listTile/profile_menu_tile.dart';
import 'package:ecommerce/app/common/widgets/roundedImage/rounded_image.dart';
import 'package:ecommerce/app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/app/modules/login/controllers/user_controller.dart';
import 'package:ecommerce/app/utils/constants/image_strings.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return Scaffold(
      appBar: const AppAppBar(title: Text('Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Obx(() => AppRoundedImage(
                        applyImageRadius: true,
                        isNetworkImage: controller.user.value.profilePicture.isNotEmpty ? true : false,
                        borderRadius: 100,
                        fit: BoxFit.cover,
                        imageUrl: controller.user.value.profilePicture.isNotEmpty
                            ? controller.user.value.profilePicture
                            : AppImageStrings.google,
                        height: 80,
                        width: 80),),
                    TextButton(onPressed: () =>controller.uploadUserProfilePicture(), child: const Text('Change Profile'))
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const AppSectionHeading(title: 'Profile Information', action: false),
              const SizedBox(height: AppSizes.spaceBtwItems),
              AppProfileMenuTile(leadingText: 'Name', title: controller.user.value.fullName, onTap: () {}),
              AppProfileMenuTile(leadingText: 'Username', title: controller.user.value.username, onTap: () {}),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const AppSectionHeading(title: 'Profile Information', action: false),
              const SizedBox(height: AppSizes.spaceBtwItems),
              AppProfileMenuTile(leadingText: 'User Id', title: controller.user.value.id, icon: Iconsax.copy,onTap: (){},),
              AppProfileMenuTile(leadingText: 'E-Mail', title: controller.user.value.email, onTap: () {}),
              AppProfileMenuTile(leadingText: 'Phone Number', title: controller.user.value.phone, onTap: () {}),
              AppProfileMenuTile(leadingText: 'Gender', title: 'Male', onTap: () {}),
              AppProfileMenuTile(leadingText: 'Date of Birth', title: '25-12-2000', onTap: () {}),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Delete Account',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.red),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
