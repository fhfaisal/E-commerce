import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../customShape/curvedEdges/curved_edge_widget.dart';
import 'circular_container.dart';
class AppPrimaryHeaderContainer extends StatelessWidget {
  const AppPrimaryHeaderContainer({
    super.key, required this.child,this.height,
  });
  final Widget child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return AppCurvedEdgeWidget(
      child: Container(
          color: AppColors.primary,
          height: height??400,
          padding: const EdgeInsets.all(0),
          ///Make sure give a size
          child: Stack(
            children: [

              ///Background shape
              Positioned(
                  top: -150, right: -250, child: AppCircularContainer(color: AppColors.textWhite.withOpacity(0.1))),
              Positioned(
                  top: 100, right: -300, child: AppCircularContainer(color: AppColors.textWhite.withOpacity(0.1))),
              child,
            ],
          )),
    );
  }
}