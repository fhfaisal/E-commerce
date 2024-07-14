import 'package:ecommerce/app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce/app/common/widgets/containers/circular_container.dart';
import 'package:ecommerce/app/modules/card/widgets/card_items.dart';
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/checkout_controller.dart';

class CheckoutView extends GetView<CheckoutController> {
  const CheckoutView({super.key});
  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: const AppAppBar(title: Text('CheckoutView')),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            const AppCardItems(showAddRemoveButton: false),
            const SizedBox(height: AppSizes.spaceBtwSections),
            CouponWithApply(dark: dark),
            const SizedBox(height: AppSizes.spaceBtwSections),

          ],
        ),
      ),
    );
  }
}

class CouponWithApply extends StatelessWidget {
  const CouponWithApply({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return AppCircularContainer(
      showBorder: true,
      borderRadius: AppSizes.borderRadius16,
      color: dark?AppColors.black:AppColors.white,
      paddingAll: AppSizes.sm,
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo? Enter Here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: dark?AppColors.white.withOpacity(0.5):AppColors.dark.withOpacity(0.5),
              backgroundColor: AppColors.grey.withOpacity(0.2),
              side: BorderSide(color:AppColors.grey.withOpacity(0.1))
            ),
              onPressed: (){}, child: const Text('Apply'))
        ],
      ),
    );
  }
}
