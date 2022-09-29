import 'package:get/get.dart';

import '../controllers/admin_reference_controller.dart';

class AdminReferenceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminReferenceController>(
      () => AdminReferenceController(),
    );
  }
}
