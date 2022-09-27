import 'package:get/get.dart';

import '../controllers/pro_reference_controller.dart';

class ProReferenceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProReferenceController>(
      () => ProReferenceController(),
    );
  }
}
