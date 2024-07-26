import 'package:ecommerce/app/modules/signIn/controllers/sign_in_controller.dart';
import 'package:ecommerce/app/modules/signIn/widgets/verify_email.dart';
import 'package:ecommerce/app/utils/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/app_text.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';


class AppSignupForm extends StatelessWidget {
  const AppSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(SignInController());
    final dark = AppHelperFunction.isDarkMode(context);
    return Form(
      key: controller.signUpFormKey,
      child: Column(
        children: [
          ///First name and Last name
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                    controller: controller.firstName.value,
                    validator: (value) => AppValidators.validateEmptyText("First Name", value),
                    decoration: const InputDecoration(hintText: AppText.firstName, prefixIcon: Icon(Iconsax.user)),
                  )),
              const SizedBox(width: AppSizes.spaceBtwInputFields),
              Expanded(
                  child: TextFormField(
                    controller: controller.lastName.value,
                    validator: (value) => AppValidators.validateEmptyText("Last Name", value),
                    decoration: const InputDecoration(hintText: AppText.lastName, prefixIcon: Icon(Iconsax.user)),
                  )),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          ///Username
          TextFormField(
            controller: controller.username.value,
            validator: (value) => AppValidators.validateEmptyText("Username", value),
            decoration: const InputDecoration(hintText: AppText.username, prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          ///Email
          TextFormField(
            controller: controller.email.value,
            validator: (value) => AppValidators.validateEmail(value),
            decoration: const InputDecoration(hintText: AppText.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          ///Phone number
          TextFormField(
            controller: controller.phone.value,
            validator: (value) => AppValidators.validatePhoneNumber(value),
            decoration: const InputDecoration(hintText: AppText.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          ///Password
          TextFormField(
            controller: controller.password.value,
            validator: (value) => AppValidators.validatePassword(value),
            decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: AppText.password,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.eye_slash),
                )),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),

          ///Terms and conditions and checkbox
          Row(
            children: [
              ///Remember me
              SizedBox(
                height: 24,
                width: 24,
                child: Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(width: AppSizes.spaceBtwItems),
              Text.rich(TextSpan(children: [
                TextSpan(text: '${AppText.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: AppText.privacyPolicy,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? AppColors.white : AppColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? AppColors.white : AppColors.primary,
                    )),
                TextSpan(text: ' ${AppText.and} ', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: AppText.termsOfUse,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? AppColors.white : AppColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? AppColors.white : AppColors.primary,
                    ))
              ])),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),

          ///Create account button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: const Text(AppText.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}