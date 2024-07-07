import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
class AppCircularImage extends StatelessWidget {
  const AppCircularImage({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    this.applyImageRadius = true,
    required this.imageUrl,
    this.fit = BoxFit.contain,
    this.backgroundColor = AppColors.light,
    this.isNetworkImage = false,
    this.borderRadius = AppSizes.md, this.overlayColor,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor,overlayColor;
  final BoxFit? fit;
  final double? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
            width: width,
            height: height,
            padding: EdgeInsets.all(padding??0),
            decoration: BoxDecoration(
                border: border,
                borderRadius: BorderRadius.circular(borderRadius??100),
                color: backgroundColor??(AppHelperFunction.isDarkMode(context)?AppColors.black:AppColors.white) ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius??100),
              child: Image(
                color: overlayColor,
                  fit: fit,
                  image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider), // ClipRRect
            ) // Container
        ));
  }
}