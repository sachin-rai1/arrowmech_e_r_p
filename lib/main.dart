import 'package:arrowmech_e_r_p/app/data/Constant.dart';
import 'package:arrowmech_e_r_p/app/modules/login/bindings/login_binding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:get/get.dart';
import 'package:month_year_picker/month_year_picker.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        MonthYearPickerLocalizations.delegate
      ],
      theme: ThemeData(backgroundColor: Constants.primaryColor),
      initialBinding: LoginBinding(),
    ),
  );
}
