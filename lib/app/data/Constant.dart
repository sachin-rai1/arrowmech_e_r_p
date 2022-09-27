import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Constants {
  static String connectionString = 'https://test.readingmonitor.co/api';
  static Color primaryColor = const Color(0xFFC12026);
  static Color secondaryColor = const Color(0xFFF8F8F8);
  static Color textColor = const Color(0xFF083A50);
  static String outFit = "OutFit";
  static String outFitMedium = "OutFitMedium";
  static String outfitBold = "OutFitBold";
  static const double padding = 20;
  static const double avatarRadius = 45;

  static showtoast(msg) {
    Fluttertoast.showToast(
      msg: msg,
      backgroundColor: Colors.green,
    );
  }

  static showErrorToast(msg) {
    Fluttertoast.showToast(
      msg: msg,
      backgroundColor: Colors.red,
    );
  }

  static snackBarError(msg, title) {
    Get.snackbar(msg, title,
        backgroundColor: primaryColor,
        colorText: Colors.white,
        duration: Duration(milliseconds: 2000),
    );
  }

  static snackBar(msg, title) {
    Get.snackbar(msg, title,
        backgroundColor: secondaryColor,
        colorText: Colors.black,
        duration: Duration(milliseconds: 2000));
  }
}
