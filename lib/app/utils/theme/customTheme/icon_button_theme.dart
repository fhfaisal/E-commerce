import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class AppIconButtonTheme {
  AppIconButtonTheme._(); //To avoid creating instances

  ///Light Theme
  static final lightIconButtonTheme = IconButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStateProperty.all(AppColors.dark),
      fixedSize: MaterialStateProperty.all(const Size.fromHeight(AppSizes.buttonHeight)),
      foregroundColor: MaterialStateProperty.all(AppColors.black),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      //side: MaterialStateProperty.all(const BorderSide(color: AppColors.grey)),
      textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 16, color: AppColors.black, fontWeight: FontWeight.w600)),
      //padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20)),
    ),
  );

  ///DorkTheme
  static final darkIconButtonTheme = IconButtonThemeData(
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.all(const Size.fromHeight(AppSizes.buttonHeight)),
      iconColor: MaterialStateProperty.all(AppColors.primary),
      foregroundColor: MaterialStateProperty.all(AppColors.primary),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      //side: MaterialStateProperty.all(const BorderSide(color: AppColors.grey)),
      textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 16, color: AppColors.primary, fontWeight: FontWeight.w600)),
      //padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20)),
    ),
  );
}
