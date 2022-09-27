import 'package:get/get.dart';

class LeadController extends GetxController {
  final List<String> status = [
    'Successful',
    'Waiting for Client Respones',
    'Quotation Pending',
    'Not Required',
    'Cancel',

  ].obs;

  final selected = "".obs;


}
