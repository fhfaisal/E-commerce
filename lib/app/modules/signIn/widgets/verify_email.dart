import 'package:ecommerce/app/common/widgets/success_screen.dart';
import 'package:ecommerce/app/modules/login/views/login_view.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/utils/constants/image_strings.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/app_text.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
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
                  "faisalhasan.dev@gmail.com",
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
                    onPressed: () => Get.to(() => SuccessScreen(
                          image: AppImageStrings.confirmedEmail,
                          title: AppText.yourAccountCreatedTitle,
                          subtitle: AppText.yourAccountCreatedSubTitle,
                          buttonText: AppText.tContinue,
                          onPressed: () => Get.to(const LoginView()),
                        )),
                    child: const Text(AppText.done),
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),

                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(AppText.resendEmail),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
