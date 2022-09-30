import 'package:arrowmech_e_r_p/app/modules/Admin/AdminNavigationBar/navigationDrawer.dart';
import 'package:arrowmech_e_r_p/app/modules/Manager/ManagerNavigation/navigationDrawer.dart';
import 'package:arrowmech_e_r_p/app/modules/Sales/Navigation/navigationDrawer.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Production/Navigation/navigationDrawer.dart';
import '../../Service/Navigation/navigationDrawer.dart';
import '../../login/views/login_view.dart';

class SplashScreenController extends GetxController {
  Future<void> getState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var role = prefs.getInt("role");
    // var status = prefs.getBool('isLoggedIn') ?? false;

    print(role);
      if (role == 1) {
        Future.delayed(Duration(milliseconds: 2500),
            () => Get.offAll(() => AdminNavigationDrawer()));
      } else if (role == 2) {
        Future.delayed(Duration(milliseconds: 2500),
            () => Get.offAll(() => ManagerNavigationDrawer()));
      } else if (role == 3) {
        Future.delayed(Duration(milliseconds: 2500),
            () => Get.offAll(() => ProductionNavigationDrawer()));
      } else if (role == 4) {
        Future.delayed(Duration(milliseconds: 2500),
            () => Get.offAll(() => SalesNavigationBar()));
      } else if (role == 5) {
        Future.delayed(Duration(milliseconds: 2500),
            () => Get.offAll(() => ServiceNavigationDrawer()));
      } else {
        Future.delayed(
            Duration(milliseconds: 2500), () => Get.offAll(() => LoginView()));
      }

  }

  @override
  void onInit() {
    getState();
    super.onInit();
  }
}
