import 'package:arrowmech_e_r_p/app/modules/Sales/Reference/controllers/reference_controller.dart';
import 'package:get/get.dart';
class ReferenceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReferenceController>(
      () => ReferenceController(),
    );
  }
}
