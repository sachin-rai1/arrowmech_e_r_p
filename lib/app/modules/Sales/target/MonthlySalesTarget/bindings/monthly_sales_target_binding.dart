import 'package:get/get.dart';
import '../controllers/monthly_sales_target_controller.dart';

class MonthlySalesTargetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MonthlySalesTargetController>(
      () => MonthlySalesTargetController(),
    );
  }
}
