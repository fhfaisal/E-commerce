import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
class AppCircularIcon extends StatelessWidget {
  const AppCircularIcon({
    super.key, this.onPressed, this.backgroundColor, this.color, required this.icon, this.size=AppSizes.lg, this.height, this.width,
  });
  final VoidCallback? onPressed;
  final Color? backgroundColor,color;
  final Icon icon;
  final double? size,height,width;
  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunction.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: backgroundColor ?? (dark?AppColors.light.withOpacity(0.9):AppColors.light.withOpacity(0.9)),
          borderRadius: BorderRadius.circular(100)
      ),
      child: Center(child: IconButton(onPressed: onPressed,icon: icon,)),
    );
  }
}