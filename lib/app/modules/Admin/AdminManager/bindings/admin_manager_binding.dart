import 'package:get/get.dart';

import '../controllers/admin_manager_controller.dart';

class AdminManagerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminManagerController>(
      () => AdminManagerController(),
    );
  }
}
