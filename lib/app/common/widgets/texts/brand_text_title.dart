import 'package:flutter/material.dart';

import '../../../utils/constants/enams.dart';

class AppBrandTitleText extends StatelessWidget {
  const AppBrandTitleText(
      {super.key,
      this.color,
      required this.title,
      this.maxLines,
      this.textAlign = TextAlign.center,
      this.brandTextSize = TextSizes.small});

  final Color? color;
  final String title;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
// Check which brandSize is required and set that style.
      style: brandTextSize == TextSizes.small
          ? Theme.of(context).textTheme.bodyMedium!.apply(color: color)
          : brandTextSize == TextSizes.medium
              ? Theme.of(context).textTheme.labelLarge!.apply(color: color)
              : brandTextSize == TextSizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
