import 'package:arrowmech_e_r_p/app/data/Constant.dart';
import 'package:arrowmech_e_r_p/app/modules/Admin/AdminReference/views/admin_reference_view.dart';
import 'package:arrowmech_e_r_p/app/modules/Manager/ManageDashBoard/views/manage_dash_board_view.dart';
import 'package:arrowmech_e_r_p/app/modules/Manager/ManageProduction/views/manage_production_view.dart';
import 'package:arrowmech_e_r_p/app/modules/Manager/ManageSales/views/manage_sales_view.dart';
import 'package:arrowmech_e_r_p/app/modules/Manager/ManageService/views/manage_service_view.dart';
import 'package:arrowmech_e_r_p/app/modules/Manager/ManagerLowItemStock/views/manager_low_item_stock_view.dart';
import 'package:arrowmech_e_r_p/app/modules/Admin/AdminNavigationBar/createDrawerHeader.dart';
import 'package:arrowmech_e_r_p/app/modules/Manager/ManagerStockItem/views/manager_stock_item_view.dart';
import 'package:arrowmech_e_r_p/app/modules/Manager/ManagerVendors/views/manager_vendors_view.dart';
import 'package:arrowmech_e_r_p/app/modules/login/controllers/login_controller.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../AdminDashBoard/views/admin_dash_board_view.dart';
import '../AdminProduction/views/admin_production_view.dart';
import '../AdminSales/views/admin_sales_view.dart';
import '../AdminService/views/admin_service_view.dart';
import 'createDrawerBodyItem.dart';

class AdminNavigationDrawer extends GetView {
  final RxInt currentPages = 0.obs;
  final List getPages = [
    AdminDashBoardView(),
    AdminSalesView(),
    AdminProductionView(),
    AdminServiceView(),
    AdminReferenceView()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        child: Scaffold(
          body: DoubleBackToCloseApp(
            snackBar: const SnackBar(content: Text('Tap back again to leave')),
            child: Obx(() => getPages[currentPages.value]),
          ),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: ClipRRect(
              child: Image.asset(
                'assets/images/mainLogo.png',
                height: 50,
                width: 124,
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
          ),
          drawer: Drawer(
              backgroundColor: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    createDrawerHeader(),
                    createDrawerBodyItem(
                        image: "assets/icons/bi_person-lines-fill.png",
                        text: 'Admin DashBoard',
                        onTap: () {
                          Get.back();
                          currentPages.value = 0;
                        }),
                    createDrawerBodyItem(
                        image: "assets/icons/Graph.png",
                        text: "Sales",
                        onTap: () {
                          Get.back();
                          currentPages.value = 1;
                        }),
                    createDrawerBodyItem(
                        image: "assets/icons/precision.png",
                        text: 'Production',
                        onTap: () {
                          Get.back();
                          currentPages.value = 2;
                        }),
                    createDrawerBodyItem(
                        image: "assets/icons/settings.png",
                        text: 'Service',
                        onTap: () {
                          Get.back();
                          currentPages.value = 3;
                        }),
                    createDrawerBodyItem(
                        iconData: Icons.book_outlined,
                        text: 'Reference',
                        onTap: () {
                          Get.back();
                          currentPages.value = 4;
                        }),
                    createDrawerBodyItem(
                        iconData: Icons.logout,
                        text: 'Log Out',
                        onTap: () {
                          Get.defaultDialog(
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
                                            backgroundColor:
                                                Constants.primaryColor),
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
                                            backgroundColor:
                                                Constants.secondaryColor),
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
      ),
    );
  }
}
