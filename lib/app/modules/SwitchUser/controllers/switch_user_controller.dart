import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SwitchUserController extends GetxController {
  var token;
  var firstname = "".obs;
  var lastname = "".obs;

  Future<void> getUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    token = prefs.getString("token");
    firstname.value = prefs.getString("firstName")!;
    lastname.value = prefs.getString("surName")!;
    print(firstname);
    print(lastname);
    print(token);
  }

  @override
  void onInit() {
    getUser();
    super.onInit();
  }
}
