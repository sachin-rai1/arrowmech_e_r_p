import 'package:get/get.dart';

import '../controllers/manage_dash_board_controller.dart';

class ManageDashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ManageDashBoardController>(
      () => ManageDashBoardController(),
    );
  }
}
