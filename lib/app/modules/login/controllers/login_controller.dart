import 'dart:convert';
import 'package:arrowmech_e_r_p/app/modules/Admin/AdminNavigationBar/navigationDrawer.dart';
import 'package:arrowmech_e_r_p/app/modules/Manager/ManagerNavigation/navigationDrawer.dart';
import 'package:arrowmech_e_r_p/app/modules/Production/Navigation/navigationDrawer.dart';
import 'package:arrowmech_e_r_p/app/modules/Sales/Navigation/navigationDrawer.dart';
import 'package:arrowmech_e_r_p/app/modules/Service/Navigation/navigationDrawer.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../data/Constant.dart';
import 'package:http/http.dart' as http;
import '../views/login_view.dart';

class LoginController extends GetxController {
  late final value = false.obs;
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  var storeSession;

  static Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var status = prefs.getBool('isLoggedIn') ?? false;
    print(status);
    if (status == true) {
      prefs.clear();
      Get.offAll(LoginView());
      Constants.snackBarError("Logged Out", "Successfully");
    }
  }

  apiLogin(String email, password) async {
    Get.dialog(Center(child: CircularProgressIndicator()));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? tokenvalue = prefs.getString("token");
    final response = await http.post(
        Uri.parse('${Constants.connectionString}login'),
        headers: <String, String>{
          'Authorization': 'Bearer $tokenvalue',
        },
        body: {
          'email': emailTextController.text,
          'password': passwordTextController.text
        }).timeout(
      const Duration(seconds: 10),
      onTimeout: () {
        Get.back();
        return Constants.showErrorToast("Plz check your internet Connection");
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      var data = jsonDecode(response.body);
      if (data['message'] == "Bad creds") {
        Fluttertoast.showToast(
          msg: 'Invalid Email or Password',
          backgroundColor: Colors.red,
        );
        Get.back();
      } else {
        Fluttertoast.showToast(
          msg: 'logged In Successfully',
          backgroundColor: Colors.green,
        );
        // Constants.snackBar("Logged In", "Successfully");
        prefs.setBool("isLoggedIn", true);
        if (data['user']['role_type'] == 1) {
          Get.offAll(() => AdminNavigationDrawer());
        }
        if (data['user']['role_type'] == 2) {
          Get.to(() => ManagerNavigationDrawer());
        } else if (data['user']['role_type'] == 3) {
          Get.to(() => ProductionNavigationDrawer());
        } else if (data['user']['role_type'] == 4) {
          Get.offAll(() => SalesNavigationBar());
        } else if (data['user']['role_type'] == 5) {
          Get.offAll(() => ServiceNavigationDrawer());
        }
      }
      print(data);
      int role = data['user']['role_type'];
      prefs.setInt("role", role);
      String token = data['token'];
      prefs.setString("token", token);
      print(token);
    } else {
      print(response.statusCode);
      Get.back();
      Fluttertoast.showToast(
        msg: 'Invalid Email or Password',
        backgroundColor: Colors.red,
      );
    }
  }
}
