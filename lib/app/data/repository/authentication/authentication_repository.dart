import 'package:ecommerce/app/modules/emailVerify/views/email_verify_view.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/utils/exceptions/firebase_exceptions.dart';
import 'package:ecommerce/app/utils/exceptions/format_exceptions.dart';
import 'package:ecommerce/app/utils/exceptions/platform_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../modules/login/controllers/user_controller.dart';
import '../../../utils/exceptions/firebase_auth_exceptions.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  ///variable
  final storage = GetStorage();
  final _auth = FirebaseAuth.instance;

  ///Get Authenticate user data
  User? get authUser => _auth.currentUser;

  // final userController = Get.put(UserController());

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
      if (user.emailVerified) {
        Get.offAllNamed(Routes.NAVIGATION_BAR);
      } else {
        Get.offAllNamed(Routes.EMAIL_VERIFY, arguments: _auth.currentUser!.email);
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
      throw AppFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw AppFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw AppFormatException(e.message);
    } on PlatformException catch (e) {
      throw AppPlatformException(e.code).message;
    } catch (e) {
      throw "Something went wrong please try again";
    }
  }

  ///SignUp with email and password
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw AppFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw AppFormatException(e.message);
    } on PlatformException catch (e) {
      throw AppPlatformException(e.code).message;
    } catch (e) {
      throw "Something went wrong please try again";
    }
  }

  ///Send mail for email verification
  Future<void> sendEmailVerification() async {
    try {
      return await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw AppFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw AppFormatException(e.message);
    } on PlatformException catch (e) {
      throw AppPlatformException(e.code).message;
    } catch (e) {
      throw "Something went wrong please try again";
    }
  }

  ///Send mail for Reset password
  Future<void> sendEmailToResetPassword(email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw AppFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw AppFormatException(e.message);
    } on PlatformException catch (e) {
      throw AppPlatformException(e.code).message;
    } catch (e) {
      throw "Something went wrong please try again";
    }
  }

  /*---------------------Federated Identity and Social Sign in-----------------------------------*/

  ///Google Sign in

  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      return await FirebaseAuth.instance.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw AppFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw AppFormatException(e.message);
    } on PlatformException catch (e) {
      throw AppPlatformException(e.code).message;
    } catch (e) {
      throw "Something went wrong please try again";
    }
  }

  /*---------------------Federated Identity and Social Sign in-----------------------------------*/

  ///Log out the user
  Future<void> logOut() async {
    try {
      //Sign out the current user to ensure the account chooser is displayed
      await GoogleSignIn().signOut();
      await _auth.signOut();
      Get.offAllNamed(Routes.LOGIN);
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw AppFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw AppFormatException(e.message);
    } on PlatformException catch (e) {
      throw AppPlatformException(e.code).message;
    } catch (e) {
      throw "Something went wrong please try again";
    }
  }
}
