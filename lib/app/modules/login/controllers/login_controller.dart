import 'package:ecommerce/app/common/widgets/loaders/full_screen.dart';
import 'package:ecommerce/app/data/repository/authentication/authentication_repository.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/utils/snakbar/snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/repository/user/user_repository.dart';
import '../../networkManager/controllers/network_manager_controller.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final userRepository = Get.put(UserRepository());
  final net = Get.put(NetworkManagerController());

  ///Variables
  final email = TextEditingController().obs;
  final password = TextEditingController().obs;
  final showPassword = true.obs;
  final remember = false.obs;

  ///Get-x storage call
  final deviceStorage = GetStorage();

  @override
  void onInit() {
    super.onInit();
    // Read stored email and password
    String? storedEmail = deviceStorage.read("REMEMBER_ME_EMAIL");
    String? storedPassword = deviceStorage.read("REMEMBER_ME_PASSWORD");

    // Check if the stored values are not null before assigning them to the controllers
    if (storedEmail != null) {
      email.value.text = storedEmail;
    }

    if (storedPassword != null) {
      password.value.text = storedPassword;
    }
  }

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  void navigateToSignInPage() => Get.toNamed(Routes.SIGN_IN);

  void navigateToHomePage() => Get.offAllNamed(Routes.NAVIGATION_BAR);

  void navigateToForgotPasswordPage() => Get.toNamed(Routes.FORGOT_PASSWORD);

  /// Login using email and password
  Future<void> login() async {
    try {
      /// Check Internet Connectivity
      final isConnected = await net.isConnected();
      if (!isConnected) {
        SnackBarMessage.error(
          title: 'Network Error',
          message: 'No internet connection',
        );
        return;
      }

      ///Check Form Validations
      if (!loginFormKey.currentState!.validate()) {
        return;
      }

      /// Start loading indicator
      FullScreenLoader.openLoadingDialog(
        "We processing your information",
      );

      ///Logged in by firebase
      final userCredential =
          await AuthenticationRepository.instance.loginWithEmailAndPassword(email.value.text.trim(), password.value.text.trim());

      ///check remember me
      if (remember.value == true) {
        deviceStorage.write('REMEMBER_ME_EMAIL', email.value.text.trim());
        deviceStorage.write('REMEMBER_ME_PASSWORD', password.value.text.trim());
      }
      // Navigate to the home page
      navigateToHomePage();
    } catch (e) {
      // Show error message
      FullScreenLoader.stopLoadingDialog();
      SnackBarMessage.warning(title: 'Oh Snap', message: e.toString());
    }
  }
}
