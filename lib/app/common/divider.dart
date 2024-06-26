import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';
import '../utils/helpers/helper_function.dart';

class AppFormDivider extends StatelessWidget {
  const AppFormDivider({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Row(
      children: [
        Flexible(child: Divider(color: dark ? AppColors.darkGrey : AppColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
        Text(text, style: Theme.of(context).textTheme.labelMedium),
        Flexible(child: Divider(color: dark ? AppColors.darkGrey : AppColors.grey, thickness: 0.5, indent: 5, endIndent: 60)),
      ],
    );
  }
}
