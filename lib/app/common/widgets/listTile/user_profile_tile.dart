import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../roundedImage/circular_image.dart';
class AppUserProfileTile extends StatelessWidget {
  const AppUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const AppCircularImage(
          borderRadius: 500,
          fit: BoxFit.cover,
          imageUrl: AppImageStrings.product2,
          width: 50,
          height: 50,
          padding: 0),
      title: Text('Faisal Hasan', style: Theme.of(context).textTheme.headlineSmall!.apply(color: AppColors.white)),
      subtitle: Text('faisalhasan.dev@gmail.com',
          style: Theme.of(context).textTheme.bodyMedium!.apply(color: AppColors.white)),
      trailing: IconButton(onPressed: () {}, icon: const Icon(Iconsax.edit,color: AppColors.white,)),
    );
  }
}