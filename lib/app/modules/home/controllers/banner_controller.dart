import 'package:ecommerce/app/data/repository/banner/banner_repository.dart';
import 'package:ecommerce/app/utils/snakbar/snackbar.dart';
import 'package:get/get.dart';

import '../model/banner_model.dart';

class BannerController extends GetxController {
  /// Variables
  final isLoading = false.obs;
  final carousalCurrentIndex = 0.obs;
  final RxList<BannerModel> banners = <BannerModel>[].obs;
  final bannerRepo = Get.put(BannerRepository());

  /// Update Page Navigational Dots
  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
    fetchBanners();
  }

  /// Fetch Banners
  Future<void> fetchBanners() async {
    try {
// Show loader while loading categories
      isLoading.value = true;
      final banners = await bannerRepo.fetchBanners();
      this.banners.assignAll(banners);
    } catch (e) {
      SnackBarMessage.error(title: 'Oh Snap!', message: e.toString);
    } finally {
// Remove Loader
      isLoading.value = false;
    }
  }
}
