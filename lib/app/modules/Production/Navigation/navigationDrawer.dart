import 'package:arrowmech_e_r_p/app/data/Constant.dart';
import 'package:arrowmech_e_r_p/app/modules/login/controllers/login_controller.dart';
import 'package:arrowmech_e_r_p/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'createDrawerBodyItem.dart';
import 'package:arrowmech_e_r_p/app/modules/Production/Navigation/createDrawerHeader.dart';

class ProductionNavigationDrawer extends StatelessWidget {
  ProductionNavigationDrawer({Key? key}) : super(key: key);

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
                      text: "Task List",
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.PRO_TASK_LIST);
                      }),
                  createDrawerBodyItem(
                      iconData: Icons.book_outlined,
                      text: 'Reference',
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.PRO_REFERENCE);
                      }),
                  createDrawerBodyItem(
                      iconData: Icons.logout,
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
