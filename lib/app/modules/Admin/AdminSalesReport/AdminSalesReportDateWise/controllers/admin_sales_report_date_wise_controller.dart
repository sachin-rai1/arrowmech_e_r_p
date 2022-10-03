import 'package:get/get.dart';

class AdminSalesReportDateWiseController extends GetxController {
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
