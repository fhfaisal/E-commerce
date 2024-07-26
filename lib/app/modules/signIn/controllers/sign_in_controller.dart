import 'package:ecommerce/app/common/widgets/loaders/full_screen.dart';
import 'package:ecommerce/app/modules/networkManager/controllers/network_manager_controller.dart';
import 'package:ecommerce/app/utils/constants/image_strings.dart';
import 'package:ecommerce/app/utils/snakbar/snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class SignInController extends GetxController {
  static SignInController get instance => Get.find();

  /// Text Controller
  final firstName = TextEditingController().obs;
  final lastName = TextEditingController().obs;
  final username = TextEditingController().obs;
  final email = TextEditingController().obs;
  final phone = TextEditingController().obs;
  final password = TextEditingController().obs;

  ///Form Key
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  ///-- SIGNUP

  Future<void> signup() async {
    try {
      /// Start Loading
      FullScreenLoader.openLoadingDialog('We processing your information', AppImageStrings.loading);

      /// Check Internet Connectivity
      final isConnected = await NetworkManagerController.instance.isConnected();
      if (!isConnected)return;

      /// Form Validation
      if (!signUpFormKey.currentState!.validate())return;

      /// Privacy Policy Check

      /// Register user in the Firebase Authentication & Save user data in the Firebase

      /// Save Authenticated user data in the Firebase FireStore

      /// Show Success Message
    } catch (e) {
      SnackBarMessage.error(title: 'Oh snap',message: e.toString());
    }finally {
      FullScreenLoader.stopLoadingDialog();
    }
  }
}
