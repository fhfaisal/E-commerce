import 'package:ecommerce/app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce/app/common/widgets/containers/circular_container.dart';
import 'package:ecommerce/app/modules/card/widgets/card_items.dart';
import 'package:ecommerce/app/modules/checkout/widgets/billing_address_section.dart';
import 'package:ecommerce/app/modules/checkout/widgets/billing_amount_section.dart';
import 'package:ecommerce/app/modules/checkout/widgets/billing_payment_section.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../common/widgets/success_screen.dart';
import '../../../utils/constants/app_text.dart';
import '../../../utils/constants/image_strings.dart';
import '../controllers/checkout_controller.dart';
import '../widgets/coupon_with_apply.dart';

class CheckoutView extends GetView<CheckoutController> {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: const AppAppBar(title: Text('Checkout')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              ///Items in card
              const AppCardItems(showAddRemoveButton: false),
              const SizedBox(height: AppSizes.spaceBtwSections),
        
              ///Coupon textField
              const CouponWithApply(),
              const SizedBox(height: AppSizes.spaceBtwSections),
              AppCircularContainer(
                showBorder: true,
                borderRadius: AppSizes.borderRadius16,
                color: dark ? AppColors.dark : AppColors.white,
                paddingAll: AppSizes.md,
                child: const Column(
                  children: [
                    ///Pricing
                    BillingAmountSection(),
                    SizedBox(height: AppSizes.spaceBtwItems),
                    Divider(),
        
                    ///Payment Method
                    BillingPaymentMethodSection(),
                    SizedBox(height: AppSizes.spaceBtwItems),
        
                    ///Address
                    BillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SuccessScreen(
            image: AppImageStrings.success,
            title: 'Payment Success',
            subtitle: "Your item will be shipped soon!",
            buttonText: AppText.tContinue,
            onPressed: () => Get.offAllNamed(Routes.NAVIGATION_BAR)),
          ),
          child: const Text('Checkout \$256'),
        ),
      ),
    );
  }
}
