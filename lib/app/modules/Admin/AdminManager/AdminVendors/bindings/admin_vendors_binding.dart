import 'package:get/get.dart';

import '../controllers/admin_vendors_controller.dart';

class AdminVendorsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminVendorsController>(
      () => AdminVendorsController(),
    );
  }
}
