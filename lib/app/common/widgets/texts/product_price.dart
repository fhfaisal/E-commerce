import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class AppProductPriceText extends StatelessWidget {
  const AppProductPriceText({
    super.key,
    this.currencySign = '\$',
    required this.price,
    this.isLarge = false,
    this.lineThrough = false,
    this.maxLine = 1,
    this.decorationColor,
    this.lineThickness = 1.0,
    this.disable = false, // Add the line thickness parameter
  });

  final String currencySign, price;
  final bool isLarge, lineThrough, disable;
  final int maxLine;
  final Color? decorationColor;
  final double lineThickness; // Line thickness parameter

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    final text = currencySign + price;
    final textStyle = isLarge ? Theme.of(context).textTheme.headlineMedium! : Theme.of(context).textTheme.titleLarge!;

    return Stack(
      children: [
        Text(
          text,
          style: textStyle.apply(
            color: disable ? AppColors.tertiaryText : null,
            decoration: lineThrough ? TextDecoration.lineThrough : null,
            decorationColor: lineThrough
                ? decorationColor
                : dark
                    ? AppColors.white
                    : AppColors.black,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: maxLine,
        ),
        if (lineThrough)
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: lineThickness,
                color: decorationColor ?? (disable ? AppColors.tertiaryText : dark ? AppColors.white : AppColors.black),
              ),
            ),
          ),
      ],
    );
  }
}
