import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      /// SubTotal
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
        Text('\$256.0', style: Theme.of(context).textTheme.labelMedium),
      ]), // Row
      const SizedBox(height: AppSizes.spaceBtwItems / 2),
      ///Shipping fees
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text('Shipping fee', style: Theme.of(context).textTheme.bodyMedium),
        Text('\$6.0', style: Theme.of(context).textTheme.labelMedium),
      ]), // Row
      const SizedBox(height: AppSizes.spaceBtwItems / 2),
      ///Tax fees
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text('Tax fee', style: Theme.of(context).textTheme.bodyMedium),
        Text('\$6.0', style: Theme.of(context).textTheme.labelMedium),
      ]), // Row
      const SizedBox(height: AppSizes.spaceBtwItems / 2),
      ///Order total
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text('Total', style: Theme.of(context).textTheme.bodyMedium),
        Text('\$6.0', style: Theme.of(context).textTheme.bodyLarge),
      ]), // Row
      const SizedBox(height: AppSizes.spaceBtwItems / 2),
    ]); // Column
  }
}
