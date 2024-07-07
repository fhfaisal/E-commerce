import 'package:ecommerce/app/modules/signIn/widgets/verify_email.dart';
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
    final dark = AppHelperFunction.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          ///First name and Last name
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(hintText: AppText.firstName, prefixIcon: Icon(Iconsax.user)),
                  )),
              const SizedBox(width: AppSizes.spaceBtwInputFields),
              Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(hintText: AppText.lastName, prefixIcon: Icon(Iconsax.user)),
                  )),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          ///Username
          TextFormField(
            decoration: const InputDecoration(hintText: AppText.username, prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          ///Email
          TextFormField(
            decoration: const InputDecoration(hintText: AppText.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          ///Phone number
          TextFormField(
            decoration: const InputDecoration(hintText: AppText.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          ///Password
          TextFormField(
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
              onPressed: () => Get.to(()=>const VerifyEmail()),
              child: const Text(AppText.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}