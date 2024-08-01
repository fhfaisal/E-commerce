import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../utils/snakbar/snackbar.dart';

class NetworkManagerController extends GetxController {
  static NetworkManagerController get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

  @override
  void onInit() {
    super.onInit();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void onClose() {
    _connectivitySubscription.cancel();
    super.onClose();
  }

  ///Check and update connection status
  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    _connectionStatus.value = result;

    if (_connectionStatus.value == ConnectivityResult.none) {
      // Show the SnackBar for no internet connection
      SnackBarMessage.customToast(title: "No Internet Connection");
    } else {
      // Hide the SnackBar when internet connection is restored
      SnackBarMessage.hideSnackBar();
    }
  }

  ///Check internet connections
  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result == ConnectivityResult.none) {
        // No internet connection
        SnackBarMessage.customToast(title: "No Internet Connection");
        return false;
      } else {
        // Internet connection available
        SnackBarMessage.hideSnackBar();
        return true;
      }
    } on PlatformException catch (e) {
      // Handle the platform exception if needed
      return false;
    }
  }
}
