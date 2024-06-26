import 'package:ecommerce/app/common/styles/spacing_style.dart';
import 'package:ecommerce/app/utils/constants/app_strings.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../common/divider.dart';
import '../controllers/login_controller.dart';
import '../widgets/login_form.dart';
import '../widgets/login_header.dart';
import '../../../common/widgets/social_buttons.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Scaffold(
      body: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ///Logo Title & Subtitle
                const AppLoginHeader(),

                ///Form
                const AppLoginForm(),

                ///Divider
                AppFormDivider(text: AppText.orSignInWith.capitalize!),
                const SizedBox(height: AppSizes.spaceBtwSections),

                ///Footer
                const AppSocialButtons()
              ],
            ),
          )),
    );
  }
}
