class UserModel {
  final String id;
  final String firstName;
  final String lastName;
  final String username;
  final String email;
  final String password;
  final String phone;
  final String profilePicture;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.password,
    required this.phone,
    required this.profilePicture,
  });

  // Method to convert UserModel to a map for easy storage in Firestore/Database
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
      'email': email,
      'password': password,
      'phone': phone,
      'profilePicture': profilePicture,
    };
  }

  // Method to convert UserModel to JSON for APIs
  Map<String, dynamic> toJson() {
    return toMap();
  }

  // Method to create a UserModel from a map (e.g., from Firestore/Database)
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      username: map['username'],
      email: map['email'],
      password: map['password'],
      phone: map['phone'],
      profilePicture: map['profilePicture'],
    );
  }
}
