import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
class AppCircularIcon extends StatelessWidget {
  const AppCircularIcon({
    super.key, this.onPressed, this.backgroundColor, required this.icon, this.size=AppSizes.lg, this.height, this.width,
  });
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Icon icon;
  final double? size,height,width;
  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunction.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: backgroundColor ?? (dark?AppColors.white.withOpacity(0.5):AppColors.darkerGrey.withOpacity(0.5)),
          shape: BoxShape.circle
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.xs),
        child: GestureDetector(
          onTap: onPressed,
            child: icon),
      ),
    );
  }
}