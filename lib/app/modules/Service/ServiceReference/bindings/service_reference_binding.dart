import 'package:get/get.dart';

import '../controllers/service_reference_controller.dart';

class ServiceReferenceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServiceReferenceController>(
      () => ServiceReferenceController(),
    );
  }
}
