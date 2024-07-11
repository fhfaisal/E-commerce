import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_function.dart';

class AppRatingIndicator extends StatelessWidget {
  const AppRatingIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunction.isDarkMode(context);
    return Row(children: [
      Expanded(flex: 1, child: Text(text, style: Theme.of(context).textTheme.bodyLarge)),
      Expanded(
        flex: 11,
        child: SizedBox(
          width: AppDeviceUtility.getScreenWidth(context) * 8.8,
          child: LinearProgressIndicator(
            value: value,
            minHeight: 8,
            backgroundColor: AppColors.grey,
            valueColor: AlwaysStoppedAnimation(dark?AppColors.primary:AppColors.black),
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ),
    ]);
  }
}
