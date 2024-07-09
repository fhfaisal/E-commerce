import 'package:ecommerce/app/common/widgets/circularIcon/circular_icon.dart';
import 'package:ecommerce/app/common/widgets/customShape/curvedEdges/curved_edge_widget.dart';
import 'package:ecommerce/app/common/widgets/roundedImage/circular_image.dart';
import 'package:ecommerce/app/common/widgets/roundedImage/rounded_image.dart';
import 'package:ecommerce/app/modules/productDetails/widgets/product_meta_data.dart';
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/constants/image_strings.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/appbar/custom_appbar.dart';
import '../controllers/product_details_controller.dart';
import '../widgets/product_details_image.dart';
import '../widgets/rating_and_share.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            ///Product Image Slider
            ProductDetailsImage(),

            Padding(
              padding: EdgeInsets.fromLTRB(AppSizes.defaultSpace, 0, AppSizes.defaultSpace, AppSizes.defaultSpace),
              child: Column(
                children: [

                  ///Rating and share button
                  ProductRatingAndShare(),
                  ///Product Title Stock & Brand
                  ProductMetaData()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




