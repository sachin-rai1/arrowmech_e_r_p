import 'package:get/get.dart';
import '../controllers/daily_sales_report_controller.dart';

class DailySalesReportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DailySalesReportController>(
      () => DailySalesReportController(),
    );
  }
}
