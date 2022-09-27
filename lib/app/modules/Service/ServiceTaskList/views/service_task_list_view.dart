import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/service_task_list_controller.dart';

class ServiceTaskListView extends GetView<ServiceTaskListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ServiceTaskListView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ServiceTaskListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
