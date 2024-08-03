import 'package:ecommerce/app/data/repository/user/user_model.dart';
import 'package:ecommerce/app/data/repository/user/user_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance=>Get.find();
  Rx<UserModel> user = UserModel.empty().obs;
  final userRepository = Get.put(UserRepository());


  @override
  void onInit() {
    super.onInit();
    fetchUserData();
  }

  ///Carousal Index Handler
  RxInt carousalCurrentIndex = 0.obs;

  updateCarousalCurrentIndex(index) {
    carousalCurrentIndex.value = index;
  }


  Future<void> fetchUserData() async {
    try {
      final user = await userRepository.fetchUserDetails();
      this.user(user);
    } catch (e) {
      user(UserModel.empty());
    }
  }
}
