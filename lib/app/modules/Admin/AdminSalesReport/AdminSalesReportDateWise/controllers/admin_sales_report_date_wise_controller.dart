import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminSalesReportDateWiseController extends GetxController {

  RxString address = ''.obs;
  final TextEditingController mapController = TextEditingController();
  RxString autoCompletePlace = ''.obs;

  final List<String> status = [
    'Successful',
    'Waiting for Client Respones',
    'Quotation Pending',
    'Not Required',
    'Cancel',

  ].obs;
  final selected = "".obs;
  var date = Get.arguments;


}
