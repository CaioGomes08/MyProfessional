import 'package:get/get.dart';

class CountController extends GetxController {
  // definindo uma variavel observavel
  var count = 0.obs;
  var notification = 0.obs;

  //método para incrementar na variavel
  increment() => count.value++;

  //increment notification
  addNotification() => notification.value++;
}
