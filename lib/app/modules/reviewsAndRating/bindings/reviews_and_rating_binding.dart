import 'package:get/get.dart';

import '../controllers/reviews_and_rating_controller.dart';

class ReviewsAndRatingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReviewsAndRatingController>(
      () => ReviewsAndRatingController(),
    );
  }
}
