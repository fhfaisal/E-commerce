import 'package:ecommerce/app/modules/forgotPassword/widgets/reset_password.dart';
import 'package:ecommerce/app/utils/constants/app_text.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/validators/validators.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Heading
            Text(AppText.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(AppText.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: AppSizes.spaceBtwSections*2),

            ///TextField
            TextFormField(
              controller: controller.email.value,
              validator: (value) => AppValidators.validateEmail(value),
              decoration: const InputDecoration(hintText: AppText.email, prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            ///Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.sendResetPassword(),
                child: const Text(AppText.done),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
