import 'package:ecommerce/app/utils/constants/app_text.dart';
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/divider.dart';
import '../../../common/widgets/social_buttons.dart';
import '../controllers/sign_in_controller.dart';
import '../widgets/signup_form.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///Title
                Text(AppText.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: AppSizes.spaceBtwSections),

                ///Form
                const AppSignupForm(),
                const SizedBox(height: AppSizes.spaceBtwSections),

                ///Divider
                AppFormDivider(text: AppText.orSignInWith.capitalize!),
                const SizedBox(height: AppSizes.spaceBtwSections),

                ///Footer
                const AppSocialButtons()
              ],
            ),
          ),
        ));
  }
}
