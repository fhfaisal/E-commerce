import 'package:ecommerce/app/data/repository/user/user_model.dart';
import 'package:ecommerce/app/data/repository/user/user_repository.dart';
import 'package:ecommerce/app/utils/snakbar/snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();
  final UserRepository userRepository = Get.put(UserRepository());
  Rx<UserModel> user = UserModel.empty().obs;

  final RxBool imageUploading = false.obs;
  final imgLoading=false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchUserData();
  }

  ///Save record from any registration provider
  Future<void> saveUserRecord(UserCredential? userCredential) async {
    try {
      if (userCredential != null) {
        // Convert Name to First and Last Name

        final nameParts = UserModel.nomeParts(userCredential.user!.displayName ?? '');
        final username = UserModel.generateUsername(userCredential.user!.displayName ?? '');

        /// Save Authenticated user data in the Firebase FireStore
        final newUser = UserModel(
          id: userCredential.user!.uid,
          firstName: nameParts[0],
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
          username: username,
          email: userCredential.user!.email ?? '',
          phone: userCredential.user!.phoneNumber ?? '',
          profilePicture: userCredential.user!.photoURL ?? '',
        );

        ///Newly created user pass to the user repo for saving user data
        await userRepository.saveUserRecord(newUser);
      }
    } catch (e) {
      SnackBarMessage.warning(
          title: 'Data not saved',
          message: "Something went wrong while saving your information. You cant re-save later in your profile");
    }
  }

  ///Fetch the data from Firebase
  Future<void> fetchUserData() async {
    try {
      imgLoading.value=true;
      final user = await userRepository.fetchUserDetails();
      this.user(user);
    } catch (e) {
      user(UserModel.empty());
    }
    imgLoading.value=false;
  }

  /// Upload Profile Image
  uploadUserProfilePicture() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 70, maxHeight: 512, maxWidth: 512);

      if (image != null) {
        imageUploading.value = true;

        /// Upload Image
        final imageUrl = await userRepository.uploadImage('Users/Images/Profile/', image);

        /// Update User Image Record
        Map<String, dynamic> json = {'profilePicture': imageUrl};
        await userRepository.updateSingleField(json);
        user.value.profilePicture = imageUrl;
        user.refresh();
        SnackBarMessage.success(title: 'Congratulations', message: 'Your Profile Image has been updated!');
      }
    } catch (e) {
      print(e);
      SnackBarMessage.error(title: 'OhSnap', message: 'Something went wrong: $e');
    } finally {
      imageUploading.value = false;
    }
  }
}
