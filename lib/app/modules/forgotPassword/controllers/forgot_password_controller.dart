import 'package:ecommerce/app/data/repository/authentication/authentication_repository.dart';
import 'package:ecommerce/app/modules/forgotPassword/widgets/reset_password.dart';
import 'package:ecommerce/app/modules/networkManager/controllers/network_manager_controller.dart';
import 'package:ecommerce/app/utils/snakbar/snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  static ForgotPasswordController get instance => Get.find();

  final NetworkManagerController net=Get.put(NetworkManagerController());
  final email = TextEditingController().obs;
  GlobalKey<FormState> emailValidate=GlobalKey();

  ///Send email to reset password
  Future<void> sendResetPassword() async {
    try{
      /// Check Internet Connectivity
      final isConnected = await net.isConnected();
      if (!isConnected) return;
      ///Check email Validity
      if (!emailValidate.currentState!.validate()) return;
      ///Sending email
      await AuthenticationRepository.instance.sendEmailToResetPassword(email.value.text);
      SnackBarMessage.success(title: 'New password send',message: 'We send a mail to reset your password. Please check your email');
      Get.to(()=> const ResetPassword());
    }catch(e){
      SnackBarMessage.error(title: 'Ohh',message: e.toString());
    }
  }

  ///Re-send email to reset password
  Future<void> resendResetPassword() async {
    try{
      /// Check Internet Connectivity
      final isConnected = await net.isConnected();
      if (!isConnected) return;
      ///Sending email
      await AuthenticationRepository.instance.sendEmailToResetPassword(email.value.text);
      SnackBarMessage.success(title: 'New password send',message: 'We send a mail to reset your password. Please check your email');
    }catch(e){
      SnackBarMessage.error(title: 'Ohh',message: e.toString());
    }
  }
}
