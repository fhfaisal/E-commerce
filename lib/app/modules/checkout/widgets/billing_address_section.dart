import 'package:ecommerce/app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppSectionHeading(title: "Shipping Address",action: false),
        Text('Faisal Hasan',style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: AppSizes.spaceBtwItems/2),
        Row(
          children: [
            const Icon(Iconsax.call,size: 16),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('+88 01644485591',style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems/2),
        Row(
          children: [
            const Icon(Icons.location_history,size: 16),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('Tollabag West Razabazar',style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
      ],
    );
  }
}
