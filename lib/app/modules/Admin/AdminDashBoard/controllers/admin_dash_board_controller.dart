import 'package:get/get.dart';

class AdminDashBoardController extends GetxController {
  static List items = ['Sales', 'Production', 'Service', 'Manager'];

  List abc = List.from(items);

  RxList msg = ['Sales', 'Production', 'Service', 'Manager', 'Hii', 'hello'].obs;

  List isAlarm = ["false", "false", 'false', 'false', 'true', 'true'];


}
