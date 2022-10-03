import 'package:get/get.dart';

import '../controllers/admin_company_wise_target_controller.dart';

class AdminCompanyWiseTargetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminCompanyWiseTargetController>(
      () => AdminCompanyWiseTargetController(),
    );
  }
}
