import 'package:ecommerce/app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce/app/common/widgets/listTile/profile_menu_tile.dart';
import 'package:ecommerce/app/common/widgets/roundedImage/rounded_image.dart';
import 'package:ecommerce/app/common/widgets/texts/section_heading.dart';
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
    return Scaffold(
      appBar: const AppAppBar(title: Text('ProfileView')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const AppRoundedImage(
                        applyImageRadius: true,
                        borderRadius: 100,
                        fit: BoxFit.cover,
                        imageUrl: AppImageStrings.product4,
                        height: 80,
                        width: 80),
                    TextButton(onPressed: () {}, child: const Text('Change Profile'))
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const AppSectionHeading(title: 'Profile Information',action: false),
              const SizedBox(height: AppSizes.spaceBtwItems),
              AppProfileMenuTile(leadingText: 'Name', title: 'Faisal Hasan', onTap: () {}),
              AppProfileMenuTile(leadingText: 'Username', title: 'faisal098736', onTap: () {}),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const AppSectionHeading(title: 'Profile Information',action: false),
              const SizedBox(height: AppSizes.spaceBtwItems),
              AppProfileMenuTile(leadingText: 'User Id', title: '201-15-13744', onTap: () {}),
              AppProfileMenuTile(leadingText: 'E-Mail', title: 'faisalhasan.dev@gmail.com', onTap: () {}),
              AppProfileMenuTile(leadingText: 'Phone Number', title: '01644485591', onTap: () {}),
              AppProfileMenuTile(leadingText: 'Gender', title: 'Male', onTap: () {}),
              AppProfileMenuTile(leadingText: 'Date of Birth', title: '25-12-2000', onTap: () {}),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              TextButton(onPressed: (){}, child: Text('Delete Account',style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.red),))
        
            ],
          ),
        ),
      ),
    );
  }
}
