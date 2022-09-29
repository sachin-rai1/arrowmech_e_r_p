import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:month_year_picker/month_year_picker.dart';
import '../../../../data/Constant.dart';

class ReportController extends GetxController {
  var selectedDate = DateTime.now().obs;

  Future<void> chooseDate() async {
    DateTime? picked = await showMonthYearPicker(
        context: Get.context!,
        initialDate: selectedDate.value,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050),
        initialMonthYearPickerMode: MonthYearPickerMode.month,
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                  primary: Constants.primaryColor,
                  onPrimary: Colors.white,
                  onSurface: Colors.black,
                  onBackground: Constants.primaryColor,
                  background: Constants.primaryColor,
                  onSecondary: Colors.white,
                  surface: Constants.primaryColor,
                  secondary: Constants.primaryColor),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red, // button text color
                ),
              ),
            ),
            child: child!,
          );
        });
    if (picked != null && picked != selectedDate.value) {
      selectedDate.value = picked;
    }
  }
}
