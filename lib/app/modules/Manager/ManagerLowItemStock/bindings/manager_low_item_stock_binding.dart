import 'package:get/get.dart';

import '../controllers/manager_low_item_stock_controller.dart';

class ManagerLowItemStockBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ManagerLowItemStockController>(
      () => ManagerLowItemStockController(),
    );
  }
}
