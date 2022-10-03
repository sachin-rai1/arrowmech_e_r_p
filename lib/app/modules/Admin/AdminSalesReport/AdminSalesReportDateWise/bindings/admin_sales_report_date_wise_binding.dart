import 'package:get/get.dart';

import '../controllers/admin_sales_report_date_wise_controller.dart';

class AdminSalesReportDateWiseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminSalesReportDateWiseController>(
      () => AdminSalesReportDateWiseController(),
    );
  }
}
