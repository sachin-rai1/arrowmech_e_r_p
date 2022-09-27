import 'package:arrowmech_e_r_p/app/data/Constant.dart';
import 'package:arrowmech_e_r_p/app/modules/Sales/Navigation/createDrawerHeader.dart';
import 'package:arrowmech_e_r_p/app/modules/login/controllers/login_controller.dart';
import 'package:arrowmech_e_r_p/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'createDrawerBodyItem.dart';

class ManagerNavigationDrawer extends StatelessWidget {
  ManagerNavigationDrawer({Key? key}) : super(key: key);

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
                      text: "Stock Items",
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.MANAGER_STOCK_ITEM);
                      }),
                  createDrawerBodyItem(
                      image: "assets/icons/Graph.png",
                      text: 'Reference',
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.PRO_REFERENCE);
                      }),
                  createDrawerBodyItem(
                      image: "assets/icons/Graph.png",
                      text: 'Log Out',
                      onTap: () {
                        Get.defaultDialog(
                            // title: "Are You Sure Want to Logout ?",
                            content: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
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
                                      ElevatedButton(
                                          onPressed: () {
                                            Get.back();
                                          },
                                          child: Text("No" , style: TextStyle(
                                            fontFamily: Constants.outFitMedium,
                                            color: Colors.grey,

                                          ),) ,
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Constants.secondaryColor
                                        ),)
                                    ],
                                  ),
                                ],
                              ),
                            ));
                      }),
                ],
              ),
            )),
      ),
    );
  }
}