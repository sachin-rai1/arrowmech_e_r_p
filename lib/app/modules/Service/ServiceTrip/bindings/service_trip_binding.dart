import 'package:get/get.dart';

import '../controllers/service_trip_controller.dart';

class ServiceTripBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServiceTripController>(
      () => ServiceTripController(),
    );
  }
}
