import 'package:ecommerce/app/common/widgets/loaders/shimmer/shimmer_loader.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class CategoriesShimmer extends StatelessWidget {
  const CategoriesShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) => const SizedBox(width: AppSizes.spaceBtwItems,),
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return const Column(
              children: [
                ShimmerLoading(width: 55, height: 55,radius: 55),
                SizedBox(height: AppSizes.spaceBtwItems / 2),
                ShimmerLoading(width: 55, height: 15),
              ],
            );
          }),
    );
  }
}
