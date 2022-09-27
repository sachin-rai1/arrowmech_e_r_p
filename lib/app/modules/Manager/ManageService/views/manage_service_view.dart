import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/manage_service_controller.dart';

class ManageServiceView extends GetView<ManageServiceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ManageServiceView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ManageServiceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
