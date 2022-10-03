import 'package:get/get.dart';

import '../controllers/admin_monthly_target_controller.dart';

class AdminMonthlyTargetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminMonthlyTargetController>(
      () => AdminMonthlyTargetController(),
    );
  }
}
