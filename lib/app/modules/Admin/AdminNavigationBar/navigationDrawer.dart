import 'package:arrowmech_e_r_p/app/data/Constant.dart';
import 'package:arrowmech_e_r_p/app/modules/Admin/AdminManager/AdminLowStockItem/views/admin_low_stock_item_view.dart';
import 'package:arrowmech_e_r_p/app/modules/Admin/AdminManager/AdminStockItem/views/admin_stock_item_view.dart';
import 'package:arrowmech_e_r_p/app/modules/Admin/AdminManager/AdminVendors/views/admin_vendors_view.dart';
import 'package:arrowmech_e_r_p/app/modules/Admin/AdminReference/views/admin_reference_view.dart';
import 'package:arrowmech_e_r_p/app/modules/Admin/AdminNavigationBar/createDrawerHeader.dart';
import 'package:arrowmech_e_r_p/app/modules/Admin/AdminSalesReport/views/admin_sales_report_view.dart';
import 'package:arrowmech_e_r_p/app/modules/Admin/AdminSalesTarget/views/admin_sales_target_view.dart';
import 'package:arrowmech_e_r_p/app/modules/SwitchUser/views/switch_user_view.dart';
import 'package:arrowmech_e_r_p/app/modules/login/controllers/login_controller.dart';
import 'package:arrowmech_e_r_p/app/modules/login/views/login_view.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import '../AdminDashBoard/views/admin_dash_board_view.dart';
import '../AdminManager/AdminTaskAllocation/views/admin_task_allocation_view.dart';

import '../AdminProduction/views/admin_production_view.dart';
import '../AdminService/views/admin_service_view.dart';
import 'createDrawerBodyItem.dart';

class AdminNavigationDrawer extends GetView {
  final RxInt currentPages = 0.obs;
  final List getPages = [
    AdminDashBoardView(),
    AdminSalesReportView(),
    AdminSalesTargetView(),
    AdminTaskAllocationView(),
    AdminStockItemView(),
    AdminVendorsView(),
    AdminLowStockItemView(),
    AdminProductionView(),
    AdminServiceView(),
    AdminReferenceView(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DoubleBackToCloseApp(
          snackBar: const SnackBar(content: Text('Tap back again to leave')),
          child: Obx(() => getPages[currentPages.value]),
        ),
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
          leading: Builder(builder: (context) {
            return IconButton(
              iconSize: 41.19,
              icon: const Icon(Icons.menu),
              color: Constants.primaryColor,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          }),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                // Get.toNamed("SwitchUser");
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SpeedDial(
                  icon: Icons.account_circle,
                  iconTheme: IconThemeData(color: Colors.grey[400], size: 50),
                  direction: SpeedDialDirection.down,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  curve: Curves.bounceInOut,
                  children: [
                    SpeedDialChild(
                      child: Icon(Icons.switch_account_outlined,
                          color: Constants.primaryColor),
                      backgroundColor: Constants.secondaryColor,
                      onTap: () => Get.to(() => SwitchUserView()),
                      label: 'Switch User',
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Constants.primaryColor),
                      labelBackgroundColor: Constants.secondaryColor,
                    ),
                    SpeedDialChild(
                      child: Icon(Icons.person_add_alt_1,
                          color: Constants.primaryColor),
                      backgroundColor: Constants.secondaryColor,
                      onTap: () => Get.to(() => LoginView()),
                      label: 'Add User',
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Constants.primaryColor),
                      labelBackgroundColor: Constants.secondaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        drawer: Drawer(
            backgroundColor: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  createDrawerHeader(),
                  createDrawerBodyItem(
                      image: "assets/icons/dashboard.png",
                      text: 'Admin DashBoard',
                      onTap: () {
                        Get.back();
                        currentPages.value = 0;
                      }),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      iconColor: Constants.primaryColor,
                      childrenPadding: EdgeInsets.symmetric(horizontal: 75),
                      expandedAlignment: Alignment.topLeft,
                      tilePadding: EdgeInsets.only(right: 20),
                      title: createDrawerBodyItem(
                          image: "assets/icons/Graph.png", text: "Sales"),
                      children: <Widget>[salesList(context)],
                    ),
                  ),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      iconColor: Constants.primaryColor,
                      expandedAlignment: Alignment.topLeft,
                      tilePadding: EdgeInsets.only(right: 20),
                      title: createDrawerBodyItem(
                          image: "assets/icons/ic_sharp-manage-accounts.png",
                          text: 'Manager'),
                      childrenPadding: EdgeInsets.symmetric(horizontal: 75),
                      children: [managerList(context)],
                    ),
                  ),
                  createDrawerBodyItem(
                      image: "assets/icons/precision.png",
                      text: 'Production',
                      onTap: () {
                        Get.back();
                        currentPages.value = 7;
                      }),
                  createDrawerBodyItem(
                      image: "assets/icons/settings.png",
                      text: 'Service',
                      onTap: () {
                        Get.back();
                        currentPages.value = 8;
                      }),
                  createDrawerBodyItem(
                      iconData: Icons.book_outlined,
                      text: 'Reference',
                      onTap: () {
                        Get.back();
                        currentPages.value = 9;
                      }),
                  createDrawerBodyItem(
                      iconData: Icons.logout,
                      text: 'Log Out',
                      onTap: () {
                        logout(context);
                      }),
                ],
              ),
            )),
      ),
    );
  }
  Future logout(BuildContext context) {
    return Get.defaultDialog(
        title: "!! Alert !! ",
        content: Column(
          children: [
            Text("Are You Sure Want to Logout ?"),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    LoginController.logout();
                  },
                  child: Text(
                    "Yes",
                    style: TextStyle(
                      fontFamily: Constants.outFitMedium,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Constants.primaryColor),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    "No",
                    style: TextStyle(
                      fontFamily: Constants.outFitMedium,
                      color: Colors.grey,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Constants.secondaryColor),
                )
              ],
            ),
          ],
        ));
  }
  Widget salesList(BuildContext context) {
    return Column(children: [
      GestureDetector(
          onTap: () {
            Get.back();
            currentPages.value = 1;
          },
          child: Text(
            "Monthly Sales Report",
            style: TextStyle(fontSize: 18, fontFamily: Constants.outFit),
          )),
      SizedBox(
        height: 10,
      ),
      GestureDetector(
          onTap: () {
            Get.back();
            currentPages.value = 2;
          },
          child: Text(
            "Monthly Sales Target",
            style: TextStyle(fontSize: 18, fontFamily: Constants.outFit),
          )),
      SizedBox(
        height: 15,
      )
    ]);
  }
  Widget managerList(BuildContext context) {
    return Column(children: [
      GestureDetector(
          onTap: () {
            Get.back();
            currentPages.value = 3;
          },
          child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Task Allocation",
                style: TextStyle(fontSize: 18, fontFamily: Constants.outFit),
              ))),
      SizedBox(
        height: 10,
      ),
      GestureDetector(
        onTap: () {
          Get.back();
          currentPages.value = 4;
        },
        child: Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Stock Items",
              style: TextStyle(fontSize: 18, fontFamily: Constants.outFit),
            )),
      ),
      SizedBox(
        height: 10,
      ),
      GestureDetector(
        onTap: () {
          Get.back();
          currentPages.value = 5;
        },
        child: Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Vendors",
              style: TextStyle(fontSize: 18, fontFamily: Constants.outFit),
            )),
      ),
      SizedBox(
        height: 10,
      ),
      GestureDetector(
        onTap: () {
          Get.back();
          currentPages.value = 6;
        },
        child: Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Low Stock Item",
              style: TextStyle(fontSize: 18, fontFamily: Constants.outFit),
            )),
      ),
      SizedBox(
        height: 10,
      ),
    ]);
  }
}
