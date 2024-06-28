import 'package:ecommerce/app/modules/home/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavigationBarController extends GetxController {
  final Rx<int> selectedIndex=0.obs;
  final RxList screen =[
    const HomeView(),
    const Center(child: Text('Store')),
    const Center(child: Text('Wishlist')),
    const Center(child: Text('Profile')),
  ].obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
