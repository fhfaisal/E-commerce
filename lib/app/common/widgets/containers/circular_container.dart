import 'package:flutter/material.dart';
class AppCircularContainer extends StatelessWidget {
  const AppCircularContainer({super.key,
    this.height,
    this.width,
    this.borderRadius,
    this.padding,
    this.color, this.child});
  final double? height, width, borderRadius,padding;
  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height??400,
      width: width??400,
      padding: EdgeInsets.all(padding??0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius??400), color: color),
      child: child,
    );
  }
}