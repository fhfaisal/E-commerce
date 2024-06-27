import 'package:ecommerce/app/utils/theme/customTheme/outlined_button_theme.dart';
import 'package:ecommerce/app/utils/theme/customTheme/text_button_theme.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'customTheme/appbar_theme.dart';
import 'customTheme/bottom_navigation_theme.dart';
import 'customTheme/bottom_sheet_theme.dart';
import 'customTheme/card_theme.dart';
import 'customTheme/checkbox_theme.dart';
import 'customTheme/chip_theme.dart';
import 'customTheme/elevated_button_theme.dart';
import 'customTheme/input_decoration_theme.dart';
import 'customTheme/material_button_theme.dart';
import 'customTheme/search_bar_theme.dart';
import 'customTheme/text_theme.dart';

class AppTheme {
  AppTheme._();

  ///Light theme
  static ThemeData lightTheme = ThemeData(
      disabledColor: AppColors.disableText,
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: Colors.white,
      textTheme: AppTextTheme.lightTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
      textButtonTheme: AppTextButtonTheme.lightTextButtonTheme,
      appBarTheme: AppAppBarTheme.lightAppBar,
      bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
      checkboxTheme: AppCheckboxTheme.lightCheckboxTheme,
      chipTheme: AppChipTheme.lightChipTheme,
      inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
      searchBarTheme: AppSearchBarTheme.lightSearchBar,
      colorScheme: ColorScheme.light(
          primary: AppColors.primary,
          brightness: Brightness.light,
          onPrimary: AppColors.primary,
          secondary: AppColors.secondary,
          onSurfaceVariant: AppColors.disableText),
      //iconTheme: const IconThemeData(color: AppColors.dark),
      bottomNavigationBarTheme: AppBottomNavigationTheme.lightBottomNavigationTheme,
      cardTheme: AppCardTheme.lightCardTheme,
      dividerTheme: DividerThemeData(color: AppColors.secondary.withOpacity(0.1)));

  ///Dark Theme
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.dark,
      textTheme: AppTextTheme.darkTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
      textButtonTheme: AppTextButtonTheme.darkTextButtonTheme,
      appBarTheme: AppAppBarTheme.darkAppBarTheme,
      bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
      checkboxTheme: AppCheckboxTheme.darkCheckboxTheme,
      chipTheme: AppChipTheme.darkChipTheme,
      inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,
      searchBarTheme: AppSearchBarTheme.darkSearchBar,
      colorScheme: ColorScheme.light(
          primary: AppColors.primary,
          brightness: Brightness.dark,
          onPrimary: AppColors.primary,
          secondary: AppColors.secondary,
          onSurfaceVariant: AppColors.disableText),
      //iconTheme: const IconThemeData(color: AppColors.white),
      bottomNavigationBarTheme: AppBottomNavigationTheme.darkElevatedButtonTheme,
      cardTheme: AppCardTheme.darkCardTheme,
      dividerTheme: DividerThemeData(color: AppColors.secondary.withOpacity(0.1)));
// ThemeData
}
