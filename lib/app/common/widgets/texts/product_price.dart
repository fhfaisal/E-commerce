import 'package:flutter/material.dart';
class AppProductPriceText extends StatelessWidget {
  const AppProductPriceText({
    super.key,
    this.currencySign='\$',
    required this.price,
    this.isLarge=false,
    this.lineThrough=false,
    this.maxLine=1,
  });

  final String currencySign, price;
  final bool isLarge, lineThrough;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      style: isLarge ? Theme
          .of(context)
          .textTheme
          .headlineMedium!
          .apply(decoration: lineThrough ? TextDecoration.lineThrough : null):
      Theme
          .of(context)
          .textTheme
          .titleLarge!
          .apply(decoration: lineThrough ? TextDecoration.lineThrough : null)
      ,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
    );
  }
}