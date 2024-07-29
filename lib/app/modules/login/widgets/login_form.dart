import 'package:ecommerce/app/modules/login/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/app_text.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/validators/validators.dart';

class AppLoginForm extends GetView<LoginController> {
  const AppLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Email
            TextFormField(
              controller: controller.email.value,
              validator: (value) => AppValidators.validateEmail(value),
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: AppText.email),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),

            ///Password
            Obx(() => TextFormField(
              controller: controller.password.value,
              obscureText: controller.showPassword.value,
              validator: (value) => AppValidators.validatePassword(value),
              decoration: InputDecoration(
                  prefixIcon: const Icon(Iconsax.password_check),
                  labelText: AppText.password,
                  suffixIcon: IconButton(
                    onPressed: () => controller.showPassword.value = !controller.showPassword.value,
                    icon: Icon(controller.showPassword.value?Iconsax.eye_slash:Iconsax.eye),
                  )),
            )),
            const SizedBox(height: AppSizes.spaceBtwInputFields / 2),

            ///Remember me & forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Remember me
                Row(
                  children: [
                    SizedBox(
                        height: 24,
                        width: 24,
                        child: Obx(() => Checkbox(
                          value: controller.remember.value,
                          onChanged: (value) => controller.remember.value = !controller.remember.value,
                        ))
                    ),
                    const Text(AppText.rememberMe)
                  ],
                ),

                ///Forgot password
                TextButton(onPressed: () =>controller.navigateToForgotPasswordPage() , child: const Text(AppText.forgetPassword))
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            ///Sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () =>controller.login(),
                child: const Text(AppText.signIn),
              ),
            ),
            const SizedBox(height: AppSizes.sm),

            ///Create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => controller.navigateToSignInPage(),
                child: const Text(AppText.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
