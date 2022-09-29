import 'package:arrowmech_e_r_p/app/data/Constant.dart';
import 'package:arrowmech_e_r_p/app/modules/Service/Navigation/createDrawerHeader.dart';
import 'package:arrowmech_e_r_p/app/modules/Service/ServiceReference/views/service_reference_view.dart';
import 'package:arrowmech_e_r_p/app/modules/Service/ServiceTaskList/views/service_task_list_view.dart';
import 'package:arrowmech_e_r_p/app/modules/Service/ServiceTrip/views/service_trip_view.dart';
import 'package:arrowmech_e_r_p/app/modules/login/controllers/login_controller.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'createDrawerBodyItem.dart';

class ServiceNavigationDrawer extends GetView {

  final RxInt currentPages = 0.obs;
  final List getPages = [
    ServiceTaskListView(),
    ServiceTripView(),
    ServiceReferenceView(),
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
                        image: "assets/icons/fe_list-task.png",
                        text: "Task List",
                        onTap: () {
                          Get.back();
                          currentPages.value = 0;
                        }),
                    createDrawerBodyItem(
                        image: "assets/icons/speedMeter.png",
                        text: "Kilometer Entry",
                        onTap: () {
                          Get.back();
                          currentPages.value = 1;
                      }),
                    createDrawerBodyItem(
                        image: "assets/icons/Graph.png",
                        text: 'Reference',
                        onTap: () {
                          Get.back();
                          currentPages.value = 2;
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
      ),
    );
  }
}
