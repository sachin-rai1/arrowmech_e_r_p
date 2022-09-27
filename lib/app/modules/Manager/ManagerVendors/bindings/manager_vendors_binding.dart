import 'package:get/get.dart';

import '../controllers/manager_vendors_controller.dart';

class ManagerVendorsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ManagerVendorsController>(
      () => ManagerVendorsController(),
    );
  }
}
