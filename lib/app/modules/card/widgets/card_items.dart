import 'package:ecommerce/app/modules/card/widgets/product_quantity_with_add_remove_button.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/texts/product_price.dart';
import '../../../utils/constants/sizes.dart';
import 'card_item.dart';

class AppCardItems extends StatelessWidget {
  const AppCardItems({
    super.key,
    this.showAddRemoveButton=true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      separatorBuilder: (context, index) => const SizedBox(height: AppSizes.spaceBtwItems),
      itemBuilder: (context, index) => Column(
        children: [
          ///Product Items
          const CardItem(),
          if(showAddRemoveButton)const SizedBox(height: AppSizes.spaceBtwItems),
          if(showAddRemoveButton)const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///Add and remove buttons
              Row(
                children: [
                  SizedBox(width: 70),
                  ProductQuantityWithAddRemoveButton(),
                ],
              ),

              ///Product Price
              AppProductPriceText(price: '32')
            ],
          ),
        ],
      ),
    );
  }
}
