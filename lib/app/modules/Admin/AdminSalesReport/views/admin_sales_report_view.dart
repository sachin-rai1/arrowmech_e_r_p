import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../data/Constant.dart';
import '../AdminSalesReportDateWise/views/admin_sales_report_date_wise_view.dart';
import '../controllers/admin_sales_report_controller.dart';

class AdminSalesReportView extends GetView<AdminSalesReportController> {
  @override
  Widget build(BuildContext context) {
    Get.put(AdminSalesReportController());
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 15, right: 10, left: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Monthly Sales Report",
                  style: TextStyle(
                      fontSize: 20, fontFamily: Constants.outFitMedium),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: Constants.primaryColor),
                      borderRadius: BorderRadius.circular(50)),
                  child: GestureDetector(
                    onTap: controller.chooseDate,
                    child: Row(
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            'assets/icons/calendar.png',
                            height: 20,
                            width: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Obx(
                          () => Text(
                            DateFormat.MMMM()
                                .format(controller.selectedDate.value)
                                .toString(),
                            style: TextStyle(
                              fontFamily: Constants.outFit,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        ClipRRect(
                          child: Image.asset(
                            'assets/icons/downarrow.png',
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 6, left: 10, right: 10),
              child: GestureDetector(
                onTap: () {
                  Get.to(
                    () => AdminSalesReportDateWiseView(),
                    arguments: controller.selectedDate.value,
                  );
                },
                child: Card(
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 15, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.account_circle,
                            color: Colors.grey[400],
                            size: 35,
                          ),
                          Text(
                            "Company Name",
                            style: TextStyle(
                                fontFamily: Constants.outFitMedium,
                                fontSize: 15),
                          ),
                          Obx(
                            () => Text(
                              DateFormat.MMMM()
                                  .format(controller.selectedDate.value)
                                  .toString(),
                              style: TextStyle(
                                fontFamily: Constants.outFit,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            );
          }))
        ],
      ),
    );
  }
}
