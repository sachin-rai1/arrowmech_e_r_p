import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/service_trip_controller.dart';

class ServiceTripView extends GetView<ServiceTripController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ServiceTripView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ServiceTripView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
