import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/app/modules/home/model/category_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../utils/exceptions/firebase_auth_exceptions.dart';
import '../../../utils/exceptions/firebase_exceptions.dart';
import '../../../utils/exceptions/format_exceptions.dart';
import '../../../utils/exceptions/platform_exceptions.dart';

class CategoryRepository extends GetxController {
  final _db = FirebaseFirestore.instance;

  @override
  void onInit() {
    super.onInit();
    getAllCategory();
  }

  ///Get category from firebase
  Future<List<CategoryModel>> getAllCategory() async {
    try {
      final snapshot = await _db.collection('Categories').get();
      final list = snapshot.docs.map((document) => CategoryModel.fromSnapshot(document)).toList();
      return list;
    } on FirebaseException catch (e) {
      throw AppFirebaseException(e.code).message;
    } on PlatformException catch (e) {
      throw AppPlatformException(e.code).message;
    } catch (e) {
      throw "Something went wrong please try again";
    }
  }

  ///Get sub-category from firebase
  /// Upload Categories to the Cloud Firebase
  // Future<void> uploadDummyData(List<CategoryModel> categories) async {
  //   try {
  //     // Upload all the Categories along with their Images
  //     final storage = Get.put(FirebaseStorageService);
  //     // Loop through each category
  //     for (var category in categories) {
  //       // Get ImageData link from the local assets
  //       final file = await storage.getImageDataFromAssets(category.image);
  //       // Upload Image and Get its URL
  //       final url = await storage.uploadImageData('Categories', file, category - name);
  //       // Assign URL to Category. image attribute
  //       category.image = url;
  //       // Store Category in Firestore
  //       await _db.collection("Categories").doc(category.id).set(category.toJson);
  //     }
  //   } on FirebaseException catch (e) {
  //     throw AppFirebaseException(e.code).message;
  //   } on PlatformException catch (e) {
  //     throw AppPlatformException(e.code).message;
  //   } catch (e) {
  //     throw 'Something went wrong. Please try again';
  //   }
  // }
}
