import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/admin_reference_controller.dart';

class AdminReferenceView extends GetView<AdminReferenceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AdminReferenceView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AdminReferenceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
