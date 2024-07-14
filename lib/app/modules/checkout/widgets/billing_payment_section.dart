import 'package:ecommerce/app/common/widgets/containers/circular_container.dart';
import 'package:ecommerce/app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/constants/image_strings.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class BillingPaymentMethodSection extends StatelessWidget {
  const BillingPaymentMethodSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSectionHeading(
          title: 'Payment Method',
          buttonText: 'Change',
          action: true,
          onPressed: () {},
        ),
        Row(
          children: [
            AppCircularContainer(
              borderRadius: AppSizes.borderRadius16,
              width: 75,
              height: 35,
              color: dark?AppColors.white:AppColors.grey,
              child: const Image(image: AssetImage(AppImageStrings.paypal),fit: BoxFit.contain,),
            ),
            const SizedBox(width: AppSizes.spaceBtwItems/2),
            Text('Paypal',style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
      ],
    );
  }
}
