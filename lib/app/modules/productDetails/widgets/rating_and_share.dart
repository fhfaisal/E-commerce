import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sizes.dart';
class ProductRatingAndShare extends StatelessWidget {
  const ProductRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ///Rating
        Row(
          children: [
            const Icon(Iconsax.star5,color: Colors.amber,size: 24),
            const SizedBox(width: AppSizes.spaceBtwItems/2),
            Text.rich(
                TextSpan(
                    children: [
                      TextSpan(text: '5.0',style: Theme.of(context).textTheme.bodyLarge),
                      TextSpan(text: '(159)',style: Theme.of(context).textTheme.bodyLarge),
                    ]
                )
            ),
          ],
        ),
        ///Share
        IconButton(onPressed: (){}, icon: const Icon(Icons.share,size: AppSizes.iconMd,))
      ],
    );
  }
}