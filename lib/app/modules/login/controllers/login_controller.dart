import 'dart:convert';
import 'package:arrowmech_e_r_p/app/modules/Sales/lead/views/lead_view.dart';
import 'package:arrowmech_e_r_p/app/modules/Service/ServiceTaskList/views/service_task_list_view.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../data/Constant.dart';
import 'package:http/http.dart' as http;

import '../../Production/ProTaskList/views/pro_task_list_view.dart';
import '../views/login_view.dart';

class LoginController extends GetxController {
  late final value = false.obs;
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

 static Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var status = prefs.getBool('isLoggedIn') ?? false;
    print(status);
    if(status == true)
      {
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
        Uri.parse('${Constants.connectionString}/login'),
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
        // Fluttertoast.showToast(
        //   msg: 'logged In Successfully',
        //   backgroundColor: Colors.green,
        // );
        Constants.snackBar("Logged In", "Successfully");
        prefs.setBool("isLoggedIn", true);
        if (data['user']['role_type'] == 1) {
          Get.to(() => LeadView());
        } else if (data['user']['role_type'] == 2) {
          Get.to(()=>ServiceTaskListView());
        } else if (data['user']['role_type'] == 3) {
          Get.to(() =>ProTaskListView());
        }
      }
      print(data);
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
