import 'package:ecommerce/app/common/styles/spacing_style.dart';
import 'package:ecommerce/app/utils/constants/app_text.dart';
import 'package:ecommerce/app/utils/constants/image_strings.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: AppSpacingStyle.paddingWithAppBarHeight*2,
            child: Column(
              children: [
                ///Image
                Image(width: AppHelperFunction.screenWidth() * 0.6, image: const AssetImage(AppImageStrings.resetPassword)),
                const SizedBox(height: AppSizes.spaceBtwSections),

                ///Title and subtitle
                Text(
                  AppText.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                Text(
                  AppText.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),

                ///Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () =>null,
                    child: const Text(AppText.done),
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () =>null,
                    child: const Text(AppText.resendEmail),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
