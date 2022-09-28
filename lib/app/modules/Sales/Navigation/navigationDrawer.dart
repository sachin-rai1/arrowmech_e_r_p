import 'package:arrowmech_e_r_p/app/data/Constant.dart';
import 'package:arrowmech_e_r_p/app/modules/Sales/Navigation/createDrawerHeader.dart';
import 'package:arrowmech_e_r_p/app/modules/login/controllers/login_controller.dart';
import 'package:arrowmech_e_r_p/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'createDrawerBodyItem.dart';

class LeadNavigationDrawer extends StatelessWidget {
  LeadNavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        child: Drawer(
            backgroundColor: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  createDrawerHeader(),
                  createDrawerBodyItem(
                      image: "assets/icons/fe_list-task.png",
                      text: "Lead Form",
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.LEAD);
                      }),
                  createDrawerBodyItem(
                      image: "assets/icons/speedMeter.png",
                      text: "Kilometer Entry",
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.TRIP);
                      }),
                  createDrawerBodyItem(
                      image: "assets/icons/report.png",
                      text: 'Monthly Report of Sales',
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.REPORT);
                      }),
                  createDrawerBodyItem(
                      image: "assets/icons/Graph.png",
                      text: 'Monthly Target of Sales',
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.TARGET);
                      }),
                  createDrawerBodyItem(
                      iconData: Icons.book_outlined,
                      text: 'Reference',
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.REFERENCE);
                      }),
                  createDrawerBodyItem(
                      iconData: Icons.logout,
                      text: 'Log Out',
                      onTap: () {
                        Get.defaultDialog(
                            title: "!! Alert !!",
                            content: Column(
                              children: [
                                Text("Are You Sure Want to Logout ?"),
                                SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {
                                          LoginController.logout();
                                        },
                                        child: Text("Yes" , style: TextStyle(
                                          fontFamily: Constants.outFitMedium,
                                        ),) ,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Constants.primaryColor
                                    ),),
                                    SizedBox(width: 20,),
                                    Padding(
                                      padding: const EdgeInsets.only(right : 10),
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Get.back();
                                          },
                                          child: Text("No" , style: TextStyle(
                                            fontFamily: Constants.outFitMedium,
                                            color: Colors.grey,

                                          ),) ,
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Constants.secondaryColor
                                        ),),
                                    )
                                  ],
                                ),
                              ],
                            ));
                      }),
                ],
              ),
            )),
      ),
    );
  }
}
