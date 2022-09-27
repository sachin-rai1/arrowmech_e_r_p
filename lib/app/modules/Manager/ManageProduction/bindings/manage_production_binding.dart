import 'package:get/get.dart';

import '../controllers/manage_production_controller.dart';

class ManageProductionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ManageProductionController>(
      () => ManageProductionController(),
    );
  }
}
