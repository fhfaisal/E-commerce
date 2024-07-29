import 'package:ecommerce/app/modules/signIn/widgets/verify_email.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/utils/snakbar/snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  ///variable
  final storage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  ///Check and store onBoarding status
  screenRedirect() {
    final user = _auth.currentUser;
    if (user != null) {
      //check user email verified or not if it is verified navigate to the home else navigate to email verify page
      if (!user.emailVerified) {
        Get.offAllNamed(Routes.NAVIGATION_BAR);
      } else {
        Get.to(() => VerifyEmail(
              email: _auth.currentUser!.email,
            ));
      }
    } else {
      //local storage
      storage.writeIfNull("isOnBoardingDone", true);
      //Check is the app lunched first time or not
      storage.read('isOnBoardingDone') != true ? Get.offAllNamed(Routes.LOGIN) : Get.offAllNamed(Routes.ON_BOARDING);
    }
  }

  ///Login with email and password
  Future<UserCredential> loginWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw e.code;
    } on FirebaseException catch (e) {
      throw e.code;
    } on FormatException catch (e) {
      throw e.message;
    } on PlatformException catch (e) {
      throw e.code;
    } catch (e) {
      throw "Something went wrong please try again";
    }
  }

  ///SignUp with email and password
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw e.code;
    } on FirebaseException catch (e) {
      throw e.code;
    } on FormatException catch (e) {
      throw e.message;
    } on PlatformException catch (e) {
      throw e.code;
    } catch (e) {
      throw "Something went wrong please try again";
    }
  }
}
