import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/Constant.dart';
import '../controllers/switch_user_controller.dart';

class SwitchUserView extends GetView<SwitchUserController> {
  @override
  Widget build(BuildContext context) {
    Get.put(SwitchUserController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: ClipRRect(
            child: Image.asset(
              'assets/images/mainLogo.png',
              height: 50,
              width: 124,
            ),
          ),
        ),
        titleSpacing: 00.0,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 60,
                    color: Constants.primaryColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'Current User : ',
                        style: TextStyle(fontSize: 15),
                      ),
                      Obx(()=>
                         Text(
                          "${controller.firstname} ${controller.lastname}",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Text("All Users"),
        SizedBox(
          height: 10,
        ),
        Expanded(child: ListView.builder(itemBuilder: (context, index) {
          return Card(
              child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 60,
                  color: Constants.primaryColor,
                ),
                Text(
                  "UserName",
                  style: TextStyle(fontSize: 20),
                ),
                GestureDetector(
                    onTap: () {
                      Get.defaultDialog(
                          title: "Are You Sure want to Switch ?",
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text(
                                    "No",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Constants.secondaryColor)),
                              SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text("Yes"),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Constants.primaryColor),
                              ),
                            ],
                          ));
                    },
                    child: Icon(
                      Icons.compare_arrows_rounded,
                      size: 30,
                      color: Colors.blueAccent,
                    ))
              ],
            ),
          ));
        }))
      ]),
    );
  }
}
