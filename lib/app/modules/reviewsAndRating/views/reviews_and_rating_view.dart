import 'package:ecommerce/app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce/app/common/widgets/containers/circular_container.dart';
import 'package:ecommerce/app/common/widgets/texts/brand_title_text_with_verify_icon.dart';
import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/constants/enams.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:ecommerce/app/utils/device/device_utility.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/progressIndicator/rating_indicator.dart';
import '../../../common/widgets/progressIndicator/star_rating_bar_indicator.dart';
import '../../../common/widgets/texts/read_more_text.dart';
import '../controllers/reviews_and_rating_controller.dart';
import '../widgets/product_overall_ratings.dart';
import '../widgets/user_review_card.dart';

class ReviewsAndRatingView extends GetView<ReviewsAndRatingController> {
  const ReviewsAndRatingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///AppBar
      appBar: const AppAppBar(title: Text('Reviews & Rating')),

      ///Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("Ratings and reviews are verified and are from people who use the same type of device that you use."),
            const SizedBox(height: AppSizes.spaceBtwItems),

            /// Overall Product Ratings
            const ProductOverallRatings(),
            const AppRatingBarIndicator(rating: 4.5),
            Text('1230',style: Theme.of(context).textTheme.bodySmall,),
            const SizedBox(height: AppSizes.spaceBtwSections),
            ///Users review
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
          ]),
        ),
      ),
    );
  }
}


