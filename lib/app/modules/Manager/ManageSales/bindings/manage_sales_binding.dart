import 'package:get/get.dart';

import '../controllers/manage_sales_controller.dart';

class ManageSalesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ManageSalesController>(
      () => ManageSalesController(),
    );
  }
}
