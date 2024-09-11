import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoading extends StatelessWidget {
  const ShimmerLoading({
    super.key,
    this.height,
    this.width,
    this.radius = 15,
    this.color,
  });

  final double? height;
  final double? width;
  final double radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Shimmer.fromColors(
        baseColor: dark ? Colors.grey[850]! : Colors.grey[300]!,
        highlightColor: dark ? Colors.grey[700]! : Colors.grey[100]!,
        child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: color ?? (dark ? AppColors.darkerGrey : AppColors.white),
              borderRadius: BorderRadius.circular(radius),
            )));
  }
}
