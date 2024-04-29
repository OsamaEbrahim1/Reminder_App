import 'package:reminder_app/core/api/end_points.dart';

class UserModel {
  final String image;
  final String email;
  final String name;

  UserModel({required this.image, required this.email, required this.name});

  factory UserModel.fromJson(Map<String, dynamic> jsonData) {
    return UserModel(
        image: jsonData[ApiKey.image],
        email: jsonData[ApiKey.email],
        name: jsonData[ApiKey.name]);
  }
}
