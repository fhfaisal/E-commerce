import 'package:get/get.dart';

import '../controllers/network_manager_controller.dart';

class NetworkManagerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NetworkManagerController>(
      () => NetworkManagerController(),
    );
  }
}
