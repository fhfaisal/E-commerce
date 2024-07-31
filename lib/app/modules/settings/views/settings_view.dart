import 'package:ecommerce/app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce/app/common/widgets/containers/primary_header_container.dart';
import 'package:ecommerce/app/common/widgets/listTile/setting_menu_tile.dart';
import 'package:ecommerce/app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/app/data/repository/authentication/authentication_repository.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/listTile/user_profile_tile.dart';
import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///Header
          AppPrimaryHeaderContainer(
            child: Column(
              children: [
                ///AppBar
                AppAppBar(
                  showBackArrow: false,
                  title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: AppColors.white)),
                ),

                ///User-profile-email
                const AppUserProfileTile(),
                const SizedBox(height: AppSizes.spaceBtwSections),
              ],
            ),
          ),

          ///Body
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
            child: Column(
              children: [
                const AppSectionHeading(title: 'Account Settings', action: false),

                const SizedBox(height: AppSizes.spaceBtwItems),

                AppSettingsMenuTile(
                  onTap: () =>Get.toNamed(Routes.ADDRESSES),
                  icon: Iconsax.safe_home,
                  title: 'My Addresses',
                  subTitle: 'Set shopping delivery address',
                ),

                AppSettingsMenuTile(
                  onTap: () {},
                  icon: Iconsax.shopping_cart,
                  title: 'My Cart',
                  subTitle: 'Add, remove products and move to checkout',
                ),

                AppSettingsMenuTile(
                  onTap: () =>Get.toNamed(Routes.MY_ORDERS),
                  icon: Iconsax.bag_tick,
                  title: 'My Orders',
                  subTitle: 'In-progress and Completed Orders',
                ),

                AppSettingsMenuTile(
                  onTap: () {},
                  icon: Iconsax.bank,
                  title: 'Bank Account',
                  subTitle: 'Withdraw balance to registered bank account',
                ),

                AppSettingsMenuTile(
                  onTap: () {},
                  icon: Iconsax.discount_shape,
                  title: 'My Coupons',
                  subTitle: 'List of all the discounted coupons',
                ),
                AppSettingsMenuTile(
                  onTap: () {},
                  icon: Iconsax.notification,
                  title: 'Notifications',
                  subTitle: 'Set any kind of notification message',
                ),

                AppSettingsMenuTile(
                  onTap: () {},
                  icon: Iconsax.security_card,
                  title: 'Account Privacy',
                  subTitle: 'Manage data usage and connected accounts',
                ),

                /// -- App Settings
                const SizedBox(height: AppSizes.spaceBtwSections),
                const AppSectionHeading(title: 'App Settings', action: false),
                const SizedBox(height: AppSizes.spaceBtwItems),

                AppSettingsMenuTile(
                  onTap: () {},
                  icon: Iconsax.document_upload,
                  title: 'Load Data',
                  subTitle: 'Upload Data to your Cloud Firebase',
                ),
                AppSettingsMenuTile(
                  icon: Iconsax.location,
                  title: 'Geolocation',
                  subTitle: 'Set recommendation based on location',
                  trailing: Switch(value: true, onChanged: (value) {}),
                ),
                AppSettingsMenuTile(
                  icon: Iconsax.security_user,
                  title: 'Safe Mode',
                  subTitle: 'Search result is safe for all ages',
                  trailing: Switch(value: false, onChanged: (value) {}),
                ),
                AppSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {})),

                ///LogOut
                const SizedBox(height: AppSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(onPressed: () => AuthenticationRepository.instance.logOut(), child: const Text('Logout')),
                ), // SizedBox

                const SizedBox(height: AppSizes.spaceBtwSections * 2.5),
                // TSettingsMenuTile
              ],
            ),
          )
        ],
      ),
    ));
  }
}
