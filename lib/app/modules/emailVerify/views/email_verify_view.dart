import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/constants/app_text.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../controllers/email_verify_controller.dart';

class EmailVerifyView extends GetView<EmailVerifyController> {
  const EmailVerifyView({super.key});

  @override
  Widget build(BuildContext context) {
    //final controller = Get.put(EmailVerifyController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () => Get.offAllNamed(Routes.LOGIN), icon: const Icon(CupertinoIcons.clear))],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              children: [
                ///Image
                Image(width: AppHelperFunction.screenWidth() * 0.6, image: const AssetImage(AppImageStrings.verifyEmail)),
                const SizedBox(height: AppSizes.spaceBtwSections),

                ///Title and subtitle
                Text(
                  AppText.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                Text(
                  controller.email ?? '',
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                Text(
                  AppText.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),

                ///Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => controller.checkEmailVerificationStatus(),
                    child: const Text('Continue'),
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),

                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () =>controller.sendEmailVerification(),
                    child: const Text(AppText.resendEmail),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
