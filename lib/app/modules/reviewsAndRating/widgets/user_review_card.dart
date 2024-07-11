import 'package:flutter/material.dart';

import '../../../common/widgets/containers/circular_container.dart';
import '../../../common/widgets/progressIndicator/star_rating_bar_indicator.dart';
import '../../../common/widgets/texts/brand_title_text_with_verify_icon.dart';
import '../../../common/widgets/texts/read_more_text.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enams.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
class UserReviewCard extends StatelessWidget {
  const UserReviewCard({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunction.isDarkMode(context);
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: const CircleAvatar(),
          title: const Text('Faisal Hasan'),
          titleTextStyle: Theme.of(context).textTheme.titleLarge,
          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.more,color: dark?AppColors.primary:AppColors.black,)),
        ),
        Row(
          children: [
            const AppRatingBarIndicator(rating: 3.6),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('12-Oct-2024',style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        const AppReadMoreText(
          text: 'This is the Description of the Product and it can go up to max 4 lines.This is the Description of the Product and it can go up to max 4 lines.This is the Description of the Product and it can go up to max 4 lines.This is the Description of the Product and it can go up to max 4 lines.',
        ),

        const SizedBox(height: AppSizes.spaceBtwItems),
        ///Company comments
        AppCircularContainer(
          borderRadius: AppSizes.borderRadius16,
          paddingAll: AppSizes.md,
          color: dark?AppColors.darkerGrey:AppColors.grey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppBrandTitleTextWithVerifyIcon(
                    iconColor: (dark?AppColors.white:AppColors.black),
                    title: 'Nike',brandTextSize:TextSizes.large ,textColor:dark? AppColors.white:AppColors.black,),
                  Text("14-03.2024",style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const AppReadMoreText(
                trimLines: 1,
                text: 'This is the Description of the Product and it can go up to max 4 lines.This is the Description of the Product and it can go up to max 4 lines.This is the Description of the Product and it can go up to max 4 lines.This is the Description of the Product and it can go up to max 4 lines.',
              ),
            ],
          ),
        )

      ],
    );
  }
}