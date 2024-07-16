import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/containers/circular_container.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class CouponWithApply extends StatelessWidget {
  const CouponWithApply({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return AppCircularContainer(
      showBorder: true,
      borderRadius: AppSizes.borderRadius16,
      color: dark ? AppColors.black : AppColors.white,
      paddingAll: AppSizes.sm,
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: AppSizes.sm),
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
                  foregroundColor: dark ? AppColors.white.withOpacity(0.5) : AppColors.dark.withOpacity(0.5),
                  backgroundColor: AppColors.grey.withOpacity(0.2),
                  side: BorderSide(color: AppColors.grey.withOpacity(0.1))),
              onPressed: () {},
              child: const Text('Apply'))
        ],
      ),
    );
  }
}
