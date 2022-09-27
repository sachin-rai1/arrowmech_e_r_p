import 'package:arrowmech_e_r_p/app/modules/Sales/lead/views/lead_view.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../login/views/login_view.dart';

class SplashScreenController extends GetxController {
  Future<void> getState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var role = prefs.getInt("role");
    var status = prefs.getBool('isLoggedIn') ?? false;
    print(status);
    print(role);
    if (status == true) {
      if (role == 3) {
        Future.delayed(Duration(seconds: 2),
            () => Get.offAll(() => LeadView()));
      } else {
        Future.delayed(Duration(seconds: 2),
                () => Get.offAll(() => LoginView()));
      }
    } else {
      Future.delayed(Duration(seconds: 2),
              () => Get.offAll(() => LoginView()));
    }
  }

  @override
  void onInit() {
    getState();
    super.onInit();
  }
}
