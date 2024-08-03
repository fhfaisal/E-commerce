import 'package:ecommerce/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/appbar/custom_appbar.dart';
import '../../../common/widgets/shoppingCard/counting_card.dart';
import '../../../utils/constants/colors.dart';

class HomeAppBar extends StatelessWidget{
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(HomeController());
    return AppAppBar(
      showBackArrow: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Good day for shopping',
            style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColors.white),
          ),
          Obx(
            () => Text(controller.user.value.fullName,
                style: Theme.of(context).textTheme.headlineMedium!.apply(color: AppColors.white)),
          ),
        ],
      ),
      actions: [
        AppShoppingCountingCard(
          onPressed: () {},
          color: AppColors.white,
        ),
      ],
    );
  }
}
