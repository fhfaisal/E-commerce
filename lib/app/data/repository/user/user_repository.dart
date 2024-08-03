import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/app/data/repository/authentication/authentication_repository.dart';
import 'package:ecommerce/app/data/repository/user/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

//Repository class for user-related data operations
class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;


  ///To save the user data to the fireStore
  Future<void> saveUserRecord(UserModel user) async {
    try {
      //to ----SET---- user data to the Users table in the fireStore
      await _db.collection('Users').doc(user.id).set(user.toJson());
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

  ///Fetch the user details from the fireStore
  Future<UserModel> fetchUserDetails() async {
    try {
      //to ----GET--- user data from the Users table in the fireStore
      final documentSnapshot = await _db.collection('Users').doc(AuthenticationRepository.instance.authUser!.uid).get();
      if (documentSnapshot.exists) {
        return UserModel.fromSnapshot(documentSnapshot);
      } else {
        return UserModel.empty();
      }
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
  ///UPDATE user data
  Future<void> updateUserDetails(UserModel user) async {
    try {
      //to ----SET---- user data to the Users table in the fireStore
      await _db.collection('Users').doc(user.id).update(user.toJson());
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
  ///UPDATE any field of user data
  Future<void> updateSingleDetails(Map<String,dynamic>json) async {
    try {
      await _db.collection('Users').doc(AuthenticationRepository.instance.authUser!.uid).update(json);
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
  }///REMOVE user data from fireStore
  Future<void> removeUserRecord(String userId) async {
    try {
      await _db.collection('Users').doc(userId).delete();
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
