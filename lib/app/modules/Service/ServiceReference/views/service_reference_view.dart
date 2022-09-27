import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/service_reference_controller.dart';

class ServiceReferenceView extends GetView<ServiceReferenceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ServiceReferenceView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ServiceReferenceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
