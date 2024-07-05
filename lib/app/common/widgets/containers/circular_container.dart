import 'package:flutter/material.dart';
class AppCircularContainer extends StatelessWidget {
  const AppCircularContainer({super.key,
    this.height,
    this.width,
    this.borderRadius,
    this.padding,
    this.margin,
    this.color, this.child, this.paddingAll, this.marginAll});
  final double? height, width, borderRadius,paddingAll,marginAll;
  final EdgeInsets? padding,margin;
  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding??EdgeInsets.all(paddingAll??0),
      margin: margin??EdgeInsets.all(marginAll??0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius??400), color: color),
      child: child,
    );
  }
}