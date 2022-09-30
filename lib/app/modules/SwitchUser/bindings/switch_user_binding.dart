import 'package:get/get.dart';

import '../controllers/switch_user_controller.dart';

class SwitchUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SwitchUserController>(
      () => SwitchUserController(),
    );
  }
}
