import 'dart:async';

import 'package:ecommerce/app/data/repository/authentication/authentication_repository.dart';
import 'package:ecommerce/app/utils/snakbar/snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../common/widgets/success_screen.dart';
import '../../../utils/constants/app_text.dart';
import '../../../utils/constants/image_strings.dart';
import '../../networkManager/controllers/network_manager_controller.dart';

class EmailVerifyController extends GetxController {

  final email = Get.arguments;
  final _authRepo = Get.put(AuthenticationRepository());
  final net = Get.put(NetworkManagerController());

  Timer? timer;
  int start = 30;
  bool showResendButton = false;

  @override
  void onInit() {
    email;
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }


  @override
  void onClose() {

  }

  ///Send Email Verification
  sendEmailVerification() async {
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
      await _authRepo.sendEmailVerification();
      SnackBarMessage.success(title: 'Email send', message: "Please check your inbox and verify your email");
    } catch (e) {
      SnackBarMessage.error(title: 'Oh snap', message: e.toString());
    }
  }

  ///Timer to automatic redirect on Email Verification
  setTimerForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser!.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        navigateToSuccessScreen();
      }
    });
  }

  ///Check email verification
  checkEmailVerificationStatus() {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null && user.emailVerified) {
      navigateToSuccessScreen();
    }else{
      SnackBarMessage.warning(title: 'Email is not verified',message: "We already send verification email. Not received yet? Tap the resend button ");
    }
  }

  ///navigate to success screen
  navigateToSuccessScreen() {
    Get.offAll(() =>
        SuccessScreen(
          image: AppImageStrings.confirmedEmail,
          title: AppText.yourAccountCreatedTitle,
          subtitle: AppText.yourAccountCreatedSubTitle,
          buttonText: AppText.tContinue,
          onPressed: () => _authRepo.screenRedirect(),
        ));
  }
}
