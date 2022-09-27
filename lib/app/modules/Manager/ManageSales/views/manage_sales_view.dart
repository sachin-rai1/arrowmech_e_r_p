import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/manage_sales_controller.dart';

class ManageSalesView extends GetView<ManageSalesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ManageSalesView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ManageSalesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
