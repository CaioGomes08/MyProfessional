import 'package:my_professional/models/enums/notification-type.dart';

class NotificationModel {
  String title;
  NotificationType type;

  NotificationModel({this.title, this.type});

  NotificationModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['type'] = this.type;
    return data;
  }
}
