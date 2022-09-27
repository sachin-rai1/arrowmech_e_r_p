import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/manager_low_item_stock_controller.dart';

class ManagerLowItemStockView extends GetView<ManagerLowItemStockController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ManagerLowItemStockView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ManagerLowItemStockView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
