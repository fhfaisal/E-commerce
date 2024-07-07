import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class OnBoardingController extends GetxController {
  ///Variables
  final PageController pageController = PageController(initialPage: 0);
  Rx<int> currentPage = 0.obs;

  ///Update current index when page scroll
  void updatePageIndicator(int index) {
    currentPage.value = index;
  }

  ///Update current index and jump to the next page
  void nextPage() {
    if(currentPage.value==2){
      navigateToLogin();
    }else{
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    }
  }
  ///Update current index and jump to the last page
  void skipPage() {
    currentPage.value = 2;
    pageController.jumpToPage(2);
  }

  navigateToLogin() {
    Get.offAllNamed(Routes.LOGIN);
  }

  onBoardingDone() {
    navigateToLogin();
  }
}
