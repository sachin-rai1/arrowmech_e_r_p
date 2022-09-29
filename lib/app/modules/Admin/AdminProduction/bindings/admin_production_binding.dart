import 'package:get/get.dart';

import '../controllers/admin_production_controller.dart';

class AdminProductionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminProductionController>(
      () => AdminProductionController(),
    );
  }
}
