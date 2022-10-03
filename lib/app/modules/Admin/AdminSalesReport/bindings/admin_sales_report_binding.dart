import 'package:get/get.dart';

import '../controllers/admin_sales_report_controller.dart';

class AdminSalesReportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminSalesReportController>(
      () => AdminSalesReportController(),
    );
  }
}
