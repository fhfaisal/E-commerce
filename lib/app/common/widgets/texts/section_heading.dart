import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
class AppSectionHeading extends StatelessWidget {
  const AppSectionHeading({
    super.key, this.buttonText='View all',
    required this.title,
    this.action=false,
    this.textColor,
    this.onPressed,
  });
  final String buttonText;
  final String title;
  final bool action;
  final Color? textColor;
  final void Function()?onPressed;


  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunction.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor??(dark?AppColors.light:AppColors.dark)),),
        if(action)TextButton(onPressed: onPressed, child: Text(buttonText))
      ],
    );
  }
}