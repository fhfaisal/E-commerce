import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/app/data/repository/user/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController{
  static UserRepository get instance=>Get.find();

  final FirebaseFirestore _db= FirebaseFirestore.instance;


  Future<void> saveUserRecord(UserModel user) async {
    try {
      return await _db.collection('Users').doc(user.id).set(user.toJson());
    } on FirebaseAuthException catch (e) {
      throw e.code;
    } on FirebaseException catch (e) {
      throw e.code;
    } on FormatException catch (e) {
      throw e.message;
    } on PlatformException catch (e) {
      throw e.code;
    } catch (e) {
      throw "Something went wrong please try again";
    }
  }
}