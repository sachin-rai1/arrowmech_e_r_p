import 'package:get/get.dart';

import '../controllers/admin_service_controller.dart';

class AdminServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminServiceController>(
      () => AdminServiceController(),
    );
  }
}
