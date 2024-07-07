import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance=> Get.find();

  final count = 0.obs;



  void navigateToSignInPage() => Get.toNamed(Routes.SIGN_IN);
  void navigateToHomePage() => Get.toNamed(Routes.NAVIGATION_BAR);
  void navigateToForgotPasswordPage() => Get.toNamed(Routes.FORGOT_PASSWORD);
}
