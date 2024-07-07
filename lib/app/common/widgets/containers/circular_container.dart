import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class AppCircularContainer extends StatelessWidget {
  const AppCircularContainer({super.key,
    this.height,
    this.width,
    this.borderRadius,
    this.padding,
    this.margin,
    this.color,
    this.child,
    this.paddingAll,
    this.marginAll,
    this.showBorder=false, this.borderColor,
  });

  final double? height, width, borderRadius, paddingAll, marginAll;
  final EdgeInsets? padding, margin;
  final Color? color,borderColor;
  final Widget? child;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunction.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      padding: padding ?? EdgeInsets.all(paddingAll ?? 0),
      margin: margin ?? EdgeInsets.all(marginAll ?? 0),
      decoration: BoxDecoration(
          border: showBorder? Border.all(color:borderColor?? AppColors.grey):null,
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          color: color),
      child: child,
    );
  }
}