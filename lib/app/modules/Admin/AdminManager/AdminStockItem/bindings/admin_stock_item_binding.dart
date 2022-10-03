import 'package:get/get.dart';

import '../controllers/admin_stock_item_controller.dart';

class AdminStockItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminStockItemController>(
      () => AdminStockItemController(),
    );
  }
}
