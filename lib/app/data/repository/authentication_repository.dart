import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();


  ///variable
  final storage=GetStorage();

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    onBoardingDone();
  }

  onBoardingDone(){
    storage.writeIfNull("isOnBoardingDone", true);
    storage.read('isOnBoardingDone')!=true? Get.offAllNamed(Routes.LOGIN):Get.offAllNamed(Routes.ON_BOARDING);
    // if(kDebugMode){
    //   print(storage.read("isOnBoardingDone"));
    // }
  }
}
