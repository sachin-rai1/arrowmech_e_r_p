import 'package:get/get.dart';

import '../controllers/manager_stock_item_controller.dart';

class ManagerStockItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ManagerStockItemController>(
      () => ManagerStockItemController(),
    );
  }
}
