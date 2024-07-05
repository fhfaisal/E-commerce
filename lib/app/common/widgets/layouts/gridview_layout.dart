import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
class AppGridViewLayout extends StatelessWidget {
  const AppGridViewLayout({
    super.key,
    required this.itemCount,
    this.crossAxisCount,
    this.mainAxisExtent,
    required this.itemBuilder, this.padding,
  });

  final int itemCount;
  final int? crossAxisCount;
  final double? mainAxisExtent;
  final Widget Function(BuildContext context,int) itemBuilder;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      shrinkWrap: true,
      padding:padding?? EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:crossAxisCount?? 2,
          mainAxisExtent:mainAxisExtent?? 288,
          mainAxisSpacing: AppSizes.gridViewSpacing,
          crossAxisSpacing: AppSizes.gridViewSpacing),
      itemBuilder: itemBuilder,
    );
  }
}