import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/manage_production_controller.dart';

class ManageProductionView extends GetView<ManageProductionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ManageProductionView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ManageProductionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
