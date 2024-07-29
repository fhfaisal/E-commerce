import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class EmailVerifyController extends GetxController {

  final email=TextEditingController().obs;
  final deviceStorage =GetStorage();

  @override
  void onInit() {
    String? storedEmail = deviceStorage.read("REMEMBER_ME_EMAIL");
    // Check if the stored values are not null before assigning them to the controllers
    if (storedEmail != null) {
      email.value.text = storedEmail;
    }else{

    }
    super.onInit();
  }
}
