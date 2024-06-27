import 'package:ecommerce/app/modules/signIn/widgets/verify_email.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  static SignInController get instance=>Get.find();

  final count = 0.obs;
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

  void navigateToVerifyEmail() => Get.to(()=>const VerifyEmail());
}
