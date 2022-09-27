import 'package:get/get.dart';
import '../controllers/company_wise_target_controller.dart';

class CompanyWiseTargetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CompanyWiseTargetController>(
      () => CompanyWiseTargetController(),
    );
  }
}
