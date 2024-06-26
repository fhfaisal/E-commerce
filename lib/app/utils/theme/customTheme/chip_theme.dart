import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class AppChipTheme {
  AppChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
        side: const BorderSide(color: Colors.transparent)),
    backgroundColor: AppColors.primary5,
    disabledColor: AppColors.disableText,
    labelStyle: const TextStyle(fontSize: 10, color: AppColors.primary, fontWeight: FontWeight.w400),
    selectedColor: AppColors.primary,
    padding: const EdgeInsets.all(AppSizes.paddingMd),
    checkmarkColor: AppColors.white,
  ); // ChipThemeData

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.white,
  ); // ChipThemeData
}
