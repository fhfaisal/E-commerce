import 'package:flutter/material.dart';
class AppCircularContainer extends StatelessWidget {
  const AppCircularContainer({super.key,
    this.height,
    this.width,
    this.borderRadius,
    this.padding,
    this.margin,
    this.color, this.child});
  final double? height, width, borderRadius,padding,margin;
  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height??400,
      width: width??400,
      padding: EdgeInsets.all(padding??0),
      margin: EdgeInsets.all(margin??0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius??400), color: color),
      child: child,
    );
  }
}