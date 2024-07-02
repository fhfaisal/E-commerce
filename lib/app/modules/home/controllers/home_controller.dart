import 'package:get/get.dart';

class HomeController extends GetxController {
  ///Carousal Index Handler
  RxInt carousalCurrentIndex=0.obs;
  updateCarousalCurrentIndex(index){
    carousalCurrentIndex.value=index;
  }
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
