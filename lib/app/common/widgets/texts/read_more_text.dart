import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_function.dart';

class AppReadMoreText extends StatelessWidget {
  const AppReadMoreText({
    super.key,
    required this.text,
    this.trimLines=2,
  });

  final String text;
  final int trimLines;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return ReadMoreText(
      text,
      trimCollapsedText: 'Show More >',
      moreStyle: Theme.of(context).textTheme.bodyLarge!.apply(color: dark ? AppColors.primary : AppColors.tertiaryText),
      lessStyle: Theme.of(context).textTheme.bodyLarge!.apply(color: dark ? AppColors.primary : AppColors.tertiaryText),
      trimExpandedText: ' < Show Less',
      trimLines: trimLines,
      trimMode: TrimMode.Line,
    );
  }
}
