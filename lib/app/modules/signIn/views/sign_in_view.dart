import 'package:ecommerce/app/utils/constants/app_strings.dart';
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/divider.dart';
import '../../../common/widgets/social_buttons.dart';
import '../controllers/sign_in_controller.dart';

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
            children: [
              ///Title
              Text(AppText.signupTitle,style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: AppSizes.spaceBtwSections),

              ///Form
              Form(
                child: Column(
                  children: [
                    ///First name and Last name
                    Row(
                      children: [
                        Expanded(child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: AppText.firstName,
                            prefixIcon: Icon(Iconsax.user)
                          ),
                        )),
                        const SizedBox(width: AppSizes.spaceBtwInputFields),
                        Expanded(child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: AppText.lastName,
                            prefixIcon: Icon(Iconsax.user)
                          ),
                        )),
                      ],
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputFields),
                    ///Username
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: AppText.username,
                          prefixIcon: Icon(Iconsax.user_edit)
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputFields),
                    ///Email
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: AppText.email,
                          prefixIcon: Icon(Iconsax.direct)
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputFields),

                    ///Phone number
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: AppText.phoneNo,
                          prefixIcon: Icon(Iconsax.call)
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputFields),
                    ///Password
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Iconsax.password_check),
                          labelText: AppText.password,
                          suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Iconsax.eye_slash),)
                      ),
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
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: '${AppText.iAgreeTo} ',style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(text: AppText.privacyPolicy,style: Theme.of(context).textTheme.bodyMedium!.apply(
                                color: dark?AppColors.white:AppColors.primary,
                                decoration: TextDecoration.underline,
                                decorationColor: dark?AppColors.white:AppColors.primary,
                              )),
                              TextSpan(text: ' ${AppText.and} ',style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(text: AppText.termsOfUse,style: Theme.of(context).textTheme.bodyMedium!.apply(
                                color: dark?AppColors.white:AppColors.primary,
                                decoration: TextDecoration.underline,
                                decorationColor: dark?AppColors.white:AppColors.primary,
                              ))
                            ]
                          )
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    ///Create account button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => null,
                        child: const Text(AppText.createAccount),
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwSections),
                    ///Divider
                    AppFormDivider(text: AppText.orSignInWith.capitalize!),
                    const SizedBox(height: AppSizes.spaceBtwSections),

                    ///Footer
                    const AppSocialButtons()
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
