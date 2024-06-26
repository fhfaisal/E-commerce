import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/app_strings.dart';
import '../../../utils/constants/sizes.dart';

class AppLoginForm extends StatelessWidget {
  const AppLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Email
            TextFormField(
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: AppText.email),
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
            const SizedBox(height: AppSizes.spaceBtwInputFields / 2),

            ///Remember me & forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Remember me
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    const Text(AppText.rememberMe)
                  ],
                ),

                ///Forgot password
                TextButton(onPressed: () {}, child: const Text(AppText.forgetPassword))
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            ///Sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(AppText.signIn),
              ),
            ),
            const SizedBox(height: AppSizes.sm),

            ///Create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(AppText.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
