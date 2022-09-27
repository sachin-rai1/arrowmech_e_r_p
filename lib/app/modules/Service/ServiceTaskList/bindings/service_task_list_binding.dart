import 'package:get/get.dart';

import '../controllers/service_task_list_controller.dart';

class ServiceTaskListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServiceTaskListController>(
      () => ServiceTaskListController(),
    );
  }
}
