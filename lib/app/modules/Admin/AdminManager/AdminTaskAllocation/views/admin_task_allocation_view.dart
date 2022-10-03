import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

import '../../../../../data/Constant.dart';
import '../controllers/admin_task_allocation_controller.dart';

class AdminTaskAllocationView extends GetView<AdminTaskAllocationController> {
  @override
  Widget build(BuildContext context) {
    Get.put(AdminTaskAllocationController());
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, top: 10),
              alignment: Alignment.topLeft,
              child: Text(
                'Task Allocation',
                style:
                TextStyle(fontSize: 22, fontFamily: Constants.outFitMedium),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Container(
                width: 155,
                padding: const EdgeInsets.only(left: 10, right: 10),
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
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
                          DateFormat('dd-MM-yyyy')
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
            ),
            Container(
                height: 65,
                padding:
                EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 10),
                child: OutlineSearchBar(
                  borderColor: Colors.grey,
                  searchButtonIconColor: Colors.grey,
                  hintText: "Search",
                  borderRadius: BorderRadius.circular(10),
                )),
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                child: Card(
                  color: Constants.secondaryColor,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10 , top: 20 , bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/icons/user.png",
                              height: 50,
                              width: 50,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width : w/3,
                                  child: Text("Employee Name "),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: w/3,
                                  child: Text("No. of Tasks"),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                height: 20,
                                width: 70,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("View"),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Constants.primaryColor,
                                  ),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                                height: 20,
                                width: 70,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Add"),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Constants.primaryColor,
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }))
          ],
        ),
      ),
    );
  }
}
