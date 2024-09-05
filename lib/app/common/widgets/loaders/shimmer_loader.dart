import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoading extends StatelessWidget {
  const ShimmerLoading({
    super.key, this.height, this.width,
  });
final double? height;
final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0),
        child: Shimmer.fromColors(
          baseColor: AppColors.darkContainer,
          highlightColor: AppColors.darkerGrey,
          direction: ShimmerDirection.ltr,
          child: Center(
            child: Text(
              'Loading',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),),
    );
  }
}