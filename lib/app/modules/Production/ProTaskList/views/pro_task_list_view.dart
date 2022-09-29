import 'package:arrowmech_e_r_p/app/modules/Production/Navigation/navigationDrawer.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pro_task_list_controller.dart';

class ProTaskListView extends GetView<ProTaskListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: ProductionNavigationDrawer(),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   title: ClipRRect(
      //     child: Image.asset(
      //       'assets/images/mainLogo.png',
      //       height: 50,
      //       width: 124,
      //     ),
      //   ),
      //   titleSpacing: 00.0,
      //   centerTitle: true,
      //   elevation: 0,
      //   leading: Builder(builder: (context) {
      //     return IconButton(
      //       iconSize: 41.19,
      //       icon: const Icon(Icons.menu),
      //       color: Constants.primaryColor,
      //       onPressed: () {
      //         Scaffold.of(context).openDrawer();
      //       },
      //       tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      //     );
      //   }),
      // ),
      body: Center(
        child: Text(
          'ProTaskListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
