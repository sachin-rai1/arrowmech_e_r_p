import 'package:arrowmech_e_r_p/app/modules/Admin/AdminSalesTarget/AdminCompanyWiseTarget/views/admin_company_wise_target_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../data/Constant.dart';
import '../controllers/admin_monthly_target_controller.dart';

class AdminMonthlyTargetView extends GetView<AdminMonthlyTargetController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Image.asset(
          'assets/images/mainLogo.png',
          height: 50,
          width: 124,
        ),
        titleSpacing: 00.0,
        centerTitle: true,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            iconSize: 41.19,
            icon: const Icon(Icons.arrow_back_outlined),
            color: Constants.primaryColor,
            onPressed: () {
              Get.back();
            },
          );
        }),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Monthly Sales Report",
                  style: TextStyle(
                      fontSize: 20, fontFamily: Constants.outFitMedium),
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
                      AdminCompanyWiseTargetView());
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
                          Image.asset(
                            "assets/icons/user.png",
                            height: 30,
                            width: 30,
                          ),
                          Text("Company Name"),
                          Icon(Icons.play_arrow)
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
