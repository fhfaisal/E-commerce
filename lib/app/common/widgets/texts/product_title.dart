import 'package:flutter/material.dart';
class AppProductTitleText extends StatelessWidget {
  const AppProductTitleText({
    super.key, required this.title, this.textSmall=true, this.maxLine,
  });
  final String title;
  final bool textSmall;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(title,
      style: textSmall? Theme.of(context).textTheme.labelLarge:Theme.of(context).textTheme.titleSmall,
      maxLines: maxLine??2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
