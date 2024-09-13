import 'package:ecommerce/app/data/repository/category/category_repository.dart';
import 'package:ecommerce/app/modules/home/model/category_model.dart';
import 'package:ecommerce/app/utils/snakbar/snackbar.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();
  final loading = false.obs;
  final _categoryRepository = Get.put(CategoryRepository());
  RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchCategories();
  }

  /// -- Load category data
  Future<void> fetchCategories() async {
    try {
      /// Show Loader while loading categories
      loading.value = true;

      /// Fetch categories from data source (Firestore, API, etc.)
      final category = await _categoryRepository.getAllCategory();

      /// Update the categories list
      allCategories.assignAll(category);

      /// Filter featured categories Item
      featuredCategories
          .assignAll(allCategories.where((category) => category.isFeatured && category.parentId.isEmpty).take(8).toList());
    } catch (e) {
      SnackBarMessage.error(title: '0h Snap!', message: e.toString());
    } finally {
      loading.value = false;
    }
  }
}
