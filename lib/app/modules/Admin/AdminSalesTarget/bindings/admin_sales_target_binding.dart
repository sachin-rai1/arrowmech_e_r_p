import 'package:get/get.dart';

import '../controllers/admin_sales_target_controller.dart';

class AdminSalesTargetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminSalesTargetController>(
      () => AdminSalesTargetController(),
    );
  }
}
