import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
class AppSpacingStyle{
  static const EdgeInsets paddingWithAppBarHeight= EdgeInsets.only(
    top: AppSizes.appBarHeight,
    left: AppSizes.defaultSpace,
    bottom: AppSizes.defaultSpace,
    right: AppSizes.defaultSpace,
  );
}