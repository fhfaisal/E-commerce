
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
      final snapshot=await _db.collection('Categories').get();
      final list=snapshot.docs.map((document) => CategoryModel.fromSnapshot(document)).toList();
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
  ///Update category to the firebase
}
