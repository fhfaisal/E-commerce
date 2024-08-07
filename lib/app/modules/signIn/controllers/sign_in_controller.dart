import 'package:ecommerce/app/common/widgets/loaders/full_screen.dart';
import 'package:ecommerce/app/data/repository/authentication/authentication_repository.dart';
import 'package:ecommerce/app/data/repository/user/user_model.dart';
import 'package:ecommerce/app/modules/emailVerify/views/email_verify_view.dart';
import 'package:ecommerce/app/modules/networkManager/controllers/network_manager_controller.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/utils/constants/image_strings.dart';
import 'package:ecommerce/app/utils/snakbar/snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/repository/user/user_repository.dart';

class SignInController extends GetxController {
  static SignInController get instance => Get.find();


  final userRepository = Get.put(UserRepository());
  final net = Get.put(NetworkManagerController());
  final storage=GetStorage();

  /// Text Controller
  final firstName = TextEditingController().obs;
  final lastName = TextEditingController().obs;
  final username = TextEditingController().obs;
  final email = TextEditingController().obs;
  final phone = TextEditingController().obs;
  final password = TextEditingController().obs;

  ///Form Key
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  ///Variables
  final showPassword = true.obs;
  final checkPrivacy = true.obs;

  ///-- SIGNUP

  Future<void> signup() async {
    try {
      /// Check Internet Connectivity
      final isConnected = await net.isConnected();
      if (!isConnected) return;
      /// Form Validation
      if (!signUpFormKey.currentState!.validate()) return;

      /// Privacy Policy Check
      if (!checkPrivacy.value) {
        if(kDebugMode){
          print(!checkPrivacy.value);
        }
        return SnackBarMessage.warning(
            title: 'Accept privacy policy',
            message: 'In order to create account you have to read Privacy Policy and Terms of use');
      }
      /// Start Loading
      FullScreenLoader.startLoading('We processing your information',animation: AppImageStrings.loading);

      /// Register user in the Firebase Authentication & Save user data in the Firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(email.value.text.trim(), password.value.text.trim());

      /// Save Authenticated user data in the Firebase FireStore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.value.text.trim(),
        lastName: lastName.value.text.trim(),
        username: username.value.text.trim(),
        email: email.value.text.trim(),
        phone: phone.value.text.trim(),
        profilePicture: '',
      );

      ///Newly created user pass to the user repo for saving user data
      await userRepository.saveUserRecord(newUser);
      ///Saved email and password in the storage
      storage.write('REMEMBER_ME_EMAIL', email.value.text.trim());
      storage.write('REMEMBER_ME_PASSWORD', password.value.text.trim());

      /// Show Success Message
      SnackBarMessage.success(title: 'Congratulations',message: 'Your account has been created!. Verify email to continue');
      Get.offAllNamed(Routes.EMAIL_VERIFY,arguments: newUser.email);
    } catch (e) {
      FullScreenLoader.stopLoading();
      if(kDebugMode){
        print(e);
      }
      SnackBarMessage.error(title: 'Oh snap', message: e.toString());
    }


  }
}
