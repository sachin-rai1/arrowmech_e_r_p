import 'package:arrowmech_e_r_p/app/data/Constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget createDrawerHeader() {
  return DrawerHeader(
    margin: EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
      color: Constants.primaryColor,
    ),
    child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Container(
                alignment: Alignment.topRight,
                child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.close,
                      size: 30,
                      color: Constants.secondaryColor,
                    ))),
            SizedBox(height: 10,),
            Row(
              children: [
                Image.asset(
                  "assets/icons/user.png",
                  height: 60,
                  width: 60,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Production",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: Constants.outFit,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ],
        )),
  );
}
