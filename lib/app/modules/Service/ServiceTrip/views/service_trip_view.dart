import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../data/Constant.dart';
import '../../Navigation/navigationDrawer.dart';
import '../controllers/service_trip_controller.dart';

class ServiceTripView extends GetView<ServiceTripController> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      // drawer: ServiceNavigationDrawer(),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   title: ClipRRect(
      //     child: Image.asset(
      //       'assets/images/mainLogo.png',
      //       height: 50,
      //       width: 124,
      //     ),
      //   ),
      //   titleSpacing: 00.0,
      //   centerTitle: true,
      //   elevation: 0,
      //   leading: Builder(builder: (context) {
      //     return IconButton(
      //       iconSize: 41.19,
      //       icon: const Icon(Icons.menu),
      //       color: Constants.primaryColor,
      //       onPressed: () {
      //         Scaffold.of(context).openDrawer();
      //       },
      //       tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      //     );
      //   }),
      // ),
      body: Column(
        children: [
          Padding(
            padding:
            const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "KiloMeter Entry",
                  style: TextStyle(
                      fontFamily: Constants.outFitMedium, fontSize: 20),
                ),
                ElevatedButton(
                  onPressed: () {
                    newEntry(context);
                  },
                  child: Text("New Entry"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Constants.primaryColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Card(
                        child: Container(
                          padding:
                          const EdgeInsets.only(top: 16, bottom: 16, left: 15),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: w / 2.4,
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Ride Date : ",
                                              style: TextStyle(
                                                  fontFamily:
                                                  Constants.outFitMedium),
                                            ),
                                            Container(
                                              alignment: Alignment.topRight,
                                              width: w / 5,
                                              child: Text(
                                                "24-09-22",
                                                style: TextStyle(
                                                    fontFamily: Constants.outFit),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        width: w / 2.4,
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("From : ",
                                                style: TextStyle(
                                                    fontFamily:
                                                    Constants.outFitMedium)),
                                            Container(
                                                alignment: Alignment.topRight,
                                                width: w / 4,
                                                child: Text(
                                                  "CityLight",
                                                  style: TextStyle(
                                                      fontFamily: Constants.outFit),
                                                ))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 2.5,
                                        color: Color(0xFF757678),
                                        height: h / 15,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: w / 2.4,
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("KM : ",
                                                style: TextStyle(
                                                    fontFamily:
                                                    Constants.outFitMedium)),
                                            Container(
                                                alignment: Alignment.topRight,
                                                width: w / 4,
                                                child: Text(
                                                  "20 KM",
                                                  style: TextStyle(
                                                      fontFamily: Constants.outFit),
                                                )),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        width: w / 2.4,
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("TO :",
                                                style: TextStyle(
                                                    fontFamily:
                                                    Constants.outFitMedium)),
                                            Container(
                                                alignment: Alignment.topRight,
                                                width: w / 4,
                                                child: Text(
                                                  "Katargam",
                                                  style: TextStyle(
                                                      fontFamily: Constants.outFit),
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Purpose : ",
                                      style: TextStyle(
                                          fontFamily: Constants.outFitMedium)),
                                  Container(
                                      width: w / 1.3,
                                      child: Text(
                                        "data dkjksljkfjljrg kldsjjkj"
                                            "lkdsjfd"
                                            "lksdjfjlkfd",
                                        style:
                                        TextStyle(fontFamily: Constants.outFit),
                                      )),
                                ],
                              )
                            ],
                          ),
                        )),
                  );
                }),
          )
        ],
      ),
    );
  }

  Future newEntry(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Get.defaultDialog(
        title: "Hiii",
        content: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  height: 50,
                  width: w / 2.7,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.brown[100]),
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: "Ride"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  height: 50,
                  width: w / 2.7,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.brown[100]),
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: "KM"),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  height: 50,
                  width: w / 2.7,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.brown[100]),
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: "From"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  height: 50,
                  width: w / 2.7,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.brown[100]),
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: "TO"),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(8),
              height: 50,
              width: w,
              child: TextFormField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.brown[100]),
                    contentPadding: EdgeInsets.only(left: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: "Purpose"),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.topLeft,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Okay"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Constants.primaryColor),
              ),
            )
          ],
        ))
    ;
  }
}
