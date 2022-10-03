import 'package:get/get.dart';

import '../controllers/admin_task_allocation_controller.dart';

class AdminTaskAllocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminTaskAllocationController>(
      () => AdminTaskAllocationController(),
    );
  }
}
