import 'package:ecommerce/app/modules/allBrands/widgets/brands_details.dart';
import 'package:ecommerce/app/modules/home/widgets/product_card_vertical.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'brands_card.dart';
import '../layouts/gridview_layout.dart';
import '../../../utils/constants/sizes.dart';
class SortedProducts extends StatelessWidget {
  const SortedProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///Dropdown
        DropdownButtonFormField(
          onChanged: (value) {},
          hint: Text('Filter', style: Theme.of(context).textTheme.labelSmall),
          decoration: const InputDecoration(prefixIcon: Icon(Icons.sort)),
          items: ['Name', 'Higher Price', 'Lower Price', 'Newest', 'Popularity']
              .map((object) => DropdownMenuItem(
              value: object,
              child: Text(
                object,
                style: Theme.of(context).textTheme.labelLarge,
              )))
              .toList(),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        ///Products
        AppGridViewLayout(
          itemCount: 10,
          itemBuilder: (context, p1) => const ProductCardVertical(),
        ),
      ],
    );
  }
}