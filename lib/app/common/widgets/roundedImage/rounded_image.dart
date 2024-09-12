import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/app/common/widgets/loaders/shimmer/shimmer_loader.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class AppRoundedImage extends StatelessWidget {
  const AppRoundedImage({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    this.applyImageRadius = true,
    required this.imageUrl,
    this.fit = BoxFit.contain,
    this.backgroundColor,
    this.isNetworkImage = false,
    this.borderRadius = AppSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return GestureDetector(
        onTap: onPressed,
        child: Container(
            width: width,
            height: height,
            padding: padding,
            decoration: BoxDecoration(
                border: border,
                color: backgroundColor ?? (dark ? AppColors.dark.withOpacity(0.4) : AppColors.light),
                borderRadius: BorderRadius.circular(borderRadius)),
            child: ClipRRect(
                borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero,
                child: isNetworkImage
                    ? CachedNetworkImage(
                        imageUrl: imageUrl,
                  fit: fit,
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  progressIndicatorBuilder: (context, url, progress) => ShimmerLoading(),
                      )
                    : Image(fit: fit, image: AssetImage(imageUrl))) // Container
            ));
  }
}
