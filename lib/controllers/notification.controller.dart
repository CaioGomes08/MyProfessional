import 'package:get/get.dart';
import 'package:my_professional/models/notification.model.dart';

class NotificationController extends GetxController {
  final notificationList = <NotificationModel>[].obs;

  addNotification(NotificationModel model) {
    notificationList.add(model);
  }
}
