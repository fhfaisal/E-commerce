import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class AppSearchBarTheme {
  AppSearchBarTheme._();

  static final lightSearchBar = SearchBarThemeData(
    elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  AppSizes.inputFieldRadius),
            side: BorderSide(color: AppColors.primary5)
          )),
    backgroundColor: MaterialStateProperty.all(AppColors.searchBg),
    textStyle: MaterialStateProperty.all(const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w500, color: AppColors.secondary)),
    hintStyle: MaterialStateProperty.all(const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w400, color: AppColors.tertiaryText)),
    side: MaterialStateProperty.all(const BorderSide(color: AppColors.primary,))
  );

// AppBar Theme

  static final darkSearchBar = SearchBarThemeData(
      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius))));
} // AppBar Theme
