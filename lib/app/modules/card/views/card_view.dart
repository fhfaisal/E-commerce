import 'package:ecommerce/app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce/app/common/widgets/texts/product_price.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/card_controller.dart';
import '../widgets/card_item.dart';
import '../widgets/card_items.dart';
import '../widgets/product_quantity_with_add_remove_button.dart';

class CardView extends GetView<CardController> {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(title: Text('Card')),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.toNamed(Routes.CHECKOUT), child: const Text("Checkout \$32")),
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(AppSizes.defaultSpace,0,AppSizes.defaultSpace,AppSizes.defaultSpace,),
        child: AppCardItems(),
      ),
    );
  }
}


