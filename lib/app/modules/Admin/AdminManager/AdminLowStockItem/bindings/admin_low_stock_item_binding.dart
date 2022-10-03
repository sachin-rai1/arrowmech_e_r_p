import 'package:get/get.dart';

import '../controllers/admin_low_stock_item_controller.dart';

class AdminLowStockItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminLowStockItemController>(
      () => AdminLowStockItemController(),
    );
  }
}
