import 'package:get/get.dart';

import '../controllers/pro_task_list_controller.dart';

class ProTaskListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProTaskListController>(
      () => ProTaskListController(),
    );
  }
}
