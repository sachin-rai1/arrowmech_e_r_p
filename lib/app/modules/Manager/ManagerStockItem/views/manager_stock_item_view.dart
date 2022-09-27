import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/manager_stock_item_controller.dart';

class ManagerStockItemView extends GetView<ManagerStockItemController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ManagerStockItemView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ManagerStockItemView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
