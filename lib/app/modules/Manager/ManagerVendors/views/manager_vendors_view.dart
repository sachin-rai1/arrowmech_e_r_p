import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/manager_vendors_controller.dart';

class ManagerVendorsView extends GetView<ManagerVendorsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ManagerVendorsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ManagerVendorsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
