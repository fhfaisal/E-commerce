import 'package:ecommerce/app/modules/home/views/home_view.dart';
import 'package:ecommerce/app/modules/settings/views/settings_view.dart';
import 'package:ecommerce/app/modules/store/views/store_view.dart';
import 'package:ecommerce/app/modules/wishlist/views/wishlist_view.dart';
import 'package:get/get.dart';

class NavigationBarController extends GetxController {
  static NavigationBarController get instance => Get.find();
  final Rx<int> selectedIndex = 0.obs;
  final RxList screen = [
    const HomeView(),
    const StoreView(),
    const WishlistView(),
    const SettingsView(),
  ].obs;

  final count = 0.obs;




  void increment() => count.value++;
}
