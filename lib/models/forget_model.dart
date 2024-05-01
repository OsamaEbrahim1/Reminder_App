import 'package:reminder_app/core/api/end_points.dart';

class ForgetModel {
  final String status;
  final bool success;

  ForgetModel({required this.status, required this.success});

  
  factory ForgetModel.fromJson(Map<String, dynamic> jsonData) {
    return ForgetModel(
      status: jsonData[ApiKey.status],
      success: jsonData[ApiKey.success],
    );
  }
}