import 'package:reminder_app/core/api/end_points.dart';

class AddItemModel {
  final String title;
  final String description;
  final String item_image;
  final String pro_date;
  final String exp_date;
  final String start_reminder;
  final String code;
  final String category_id;

  AddItemModel(
      {required this.title,
      required this.description,
      required this.item_image,
      required this.category_id,
      required this.start_reminder,
      required this.pro_date,
      required this.code,
      required this.exp_date});

  factory AddItemModel.fromJson(Map<String, dynamic> jsonData) {
    return AddItemModel(
        title: jsonData[ApiKey.title],
        description: jsonData[ApiKey.description],
        item_image: jsonData[ApiKey.item_image],
        pro_date: jsonData[ApiKey.pro_date],
        exp_date: jsonData[ApiKey.exp_date],
        start_reminder: jsonData[ApiKey.start_reminder],
        code: jsonData[ApiKey.code],
        category_id: jsonData[ApiKey.category_id]);
  }
}