import 'package:arrowmech_e_r_p/app/modules/Admin/AdminSalesTarget/AdminMonthlyTarget/views/admin_monthly_target_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../data/Constant.dart';
import '../controllers/admin_sales_target_controller.dart';

class AdminSalesTargetView extends GetView<AdminSalesTargetController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Monthly Sales Target",
                style:
                TextStyle(fontFamily: Constants.outfitBold, fontSize: 20),
              )),
          Container(
            height: 100,
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Constants.secondaryColor,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF999999)),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Months",
                          style: TextStyle(
                              color: Constants.primaryColor,
                              fontFamily: Constants.outFitMedium),
                        ),
                        Text("12"),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    color: Color(0xFF999999),
                    width: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Given Target",
                            style: TextStyle(
                                color: Constants.primaryColor,
                                fontFamily: Constants.outFitMedium)),
                        Text("100"),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    color: Color(0xFF999999),
                    width: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Completed",
                            style: TextStyle(
                                color: Constants.primaryColor,
                                fontFamily: Constants.outFitMedium)),
                        Text("50"),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    color: Color(0xFF999999),
                    width: 2,
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 10, bottom: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pending",
                            style: TextStyle(
                                color: Constants.primaryColor,
                                fontFamily: Constants.outFitMedium)),
                        Text("50"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: GestureDetector(
                onTap: (){
                  Get.to(AdminMonthlyTargetView());
                },
                child: RefreshIndicator(
                  onRefresh: () {
                    return Future(() => null);
                  },
                  child: ListView.builder(itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(8.0),
                      height: 80,
                      child: Card(
                        color: Constants.secondaryColor,
                        shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF999999)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 40),
                              child: Text("Jan"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 10 ,left: 10),
                              child: Text("1000"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 10 , left: 10),
                              child: Text("200"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10, right: 30),
                              child: Text("800"),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ))
        ],
      ),
    );
  }
}
