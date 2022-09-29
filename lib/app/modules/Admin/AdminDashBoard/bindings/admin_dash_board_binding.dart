import 'package:get/get.dart';

import '../controllers/admin_dash_board_controller.dart';

class AdminDashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminDashBoardController>(
      () => AdminDashBoardController(),
    );
  }
}
