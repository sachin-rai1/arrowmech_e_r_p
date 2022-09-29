import 'package:get/get.dart';

import '../controllers/admin_sales_controller.dart';

class AdminSalesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminSalesController>(
      () => AdminSalesController(),
    );
  }
}
