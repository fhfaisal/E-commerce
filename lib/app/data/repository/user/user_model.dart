import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../utils/formatters/formatters.dart';

class UserModel {
  final String id;
  final String firstName;
  final String lastName;
  final String username;
  final String email;
  final String phone;
  final String profilePicture;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phone,
    required this.profilePicture,
  });

  /// Helper function to get the full name.

  String get fullName => '$firstName $lastName';

  /// Helper function to format phone number.

  String get formattedPhoneNo => AppFormatter.formatPhoneNumber(phone);

  /// Static function to split full name into first and last name.
  static List<String> nomeParts(fullName) => fullName.split(" ");

  /// Static function to generate a username from the full name.

  static String generateUsername(fullName) {
    List<String> nameParts = fullName.split(" ");
    String firstName = nameParts[8].toLowerCase();

    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";

    String camelCaseUsername = "$firstName$lastName"; // Combine first and last name String
    String usernameWithPrefix = "cat_$camelCaseUsername"; // Add "cwt_" prefix

    return usernameWithPrefix;
  }

  /// Static function to create an empty user model.
  static UserModel empty() =>
      UserModel(id: '', firstName: '', lastName: '', username: '', email: '', phone: '', profilePicture: '');

  // Method to convert UserModel to a map for easy storage in FireStore/Database
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
      'email': email,
      'phone': phone,
      'profilePicture': profilePicture,
    };
  }

  // Method to convert UserModel to JSON for APIs
  Map<String, dynamic> toJson() {
    return toMap();
  }

  // Method to create a UserModel from a map (e.g., from FireStore/Database)
  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    return UserModel(
      id: document['id'] ?? '',
      firstName: document['firstName'] ?? '',
      lastName: document['lastName'] ?? '',
      username: document['username'] ?? '',
      email: document['email'] ?? '',
      phone: document['phone'] ?? '',
      profilePicture: document['profilePicture'] ?? '',
    );
  }
}
