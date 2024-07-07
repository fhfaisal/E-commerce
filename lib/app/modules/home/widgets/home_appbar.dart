import 'package:flutter/material.dart';

import '../../../common/widgets/appbar/custom_appbar.dart';
import '../../../common/widgets/shoppingCard/counting_card.dart';
import '../../../utils/constants/colors.dart';
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppAppBar(
      showBackArrow: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Good day for shopping',style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColors.white),),
          Text('Faisal Hasan',style: Theme.of(context).textTheme.headlineMedium!.apply(color: AppColors.white),),
        ],
      ),
      actions: [
        AppShoppingCountingCard(onPressed: (){},color: AppColors.white,),
      ],
    );
  }
}