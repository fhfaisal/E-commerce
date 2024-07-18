import 'package:ecommerce/app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce/app/common/widgets/brand/brands_card.dart';
import 'package:ecommerce/app/common/widgets/layouts/gridview_layout.dart';
import 'package:ecommerce/app/modules/home/widgets/product_card_vertical.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/all_products_controller.dart';

class AllProductsView extends GetView<AllProductsController> {
  const AllProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(title: Text('Popular Products')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(AppSizes.defaultSpace,0,AppSizes.defaultSpace,AppSizes.defaultSpace,),
          child: Column(
            children: [
              ///Dropdown
              DropdownButtonFormField(
                onChanged: (value) {},
                hint: Text('Filter',style: Theme.of(context).textTheme.labelSmall,),
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
              //AppGridViewLayout(itemCount: 10, itemBuilder: (context, p1) => const ProductCardVertical(),),
              AppGridViewLayout(
                itemCount: 10,
                itemBuilder: (context, p1) => const ProductCardVertical(),),

            ],
          ),
        ),
      ),
    );
  }
}
