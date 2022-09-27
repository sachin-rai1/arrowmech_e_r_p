import 'package:get/get.dart';

import '../controllers/target_controller.dart';

class TargetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TargetController>(
      () => TargetController(),
    );
  }
}
