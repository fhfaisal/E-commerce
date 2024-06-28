import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerifyEmailPage extends StatelessWidget {
  const VerifyEmailPage(
      {super.key,
        required this.image,
        required this.title,
        required this.email,
        required this.subtitle,
        required this.buttonText,
        required this.textButtonText,
        required this.buttonOnPressed,
        required this.actionOnPressed,
        required this.textButtonOnPressed,
      });

  final String image, title, subtitle,email, buttonText,textButtonText;
  final VoidCallback actionOnPressed;
  final VoidCallback buttonOnPressed;
  final VoidCallback textButtonOnPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      automaticallyImplyLeading: false,
      actions: [IconButton(onPressed: actionOnPressed, icon: const Icon(CupertinoIcons.clear))],
    ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              children: [
                ///Image
                Image(width: AppHelperFunction.screenWidth() * 0.6, image: AssetImage(image)),
                const SizedBox(height: AppSizes.spaceBtwSections),

                ///Title and subtitle
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                Text(
                  email,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),

                ///Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: buttonOnPressed,
                    child: Text(buttonText),
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),

                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: textButtonOnPressed,
                    child: Text(textButtonText),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
