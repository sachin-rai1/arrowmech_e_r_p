import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../data/Constant.dart';
import '../../ManagerNavigation/navigationDrawer.dart';
import '../controllers/manager_vendors_controller.dart';

class ManagerVendorsView extends GetView<ManagerVendorsController> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: ManagerNavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: ClipRRect(
          child: Image.asset(
            'assets/images/mainLogo.png',
            height: 50,
            width: 124,
          ),
        ),
        titleSpacing: 00.0,
        centerTitle: true,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            iconSize: 41.19,
            icon: const Icon(Icons.menu),
            color: Constants.primaryColor,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        }),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15),
                child: Text(
                  'Vendors List',
                  style: TextStyle(
                      fontSize: 25, fontFamily: Constants.outFitMedium),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 15),
                child: ElevatedButton(
                  onPressed: () {
                    addDialogue(context);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Add"),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Constants.primaryColor),
                ),
              )
            ],
          ),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Card(
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Constants.secondaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Company Name : ",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: Constants.outFitMedium),
                          ),
                          Container(
                            width: w / 2,
                            child: Text(
                              "ArrowMuse",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: Constants.outFitMedium),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Person Name : ",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: Constants.outFitMedium),
                            ),
                            Container(
                              width: w / 2,
                              child: Text(
                                "Sachin Rai",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: Constants.outFitMedium),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Area : ",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: Constants.outFitMedium),
                            ),
                            Container(
                              width: w / 2,
                              child: Text(
                                "City Light",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: Constants.outFitMedium),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "GST No : ",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: Constants.outFitMedium),
                            ),
                            Container(
                              width: w / 2,
                              child: Text(
                                "24CVWPR5575C1ZZ",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: Constants.outFitMedium),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Address : ",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: Constants.outFitMedium),
                            ),
                            Container(
                              width: w / 2,
                              child: Text(
                                "1001 , LUXURIA BUSINESS HUB , PIPLOAD , VESU ROAD ",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: Constants.outFitMedium),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }))
        ],
      ),
    );
  }

  Future addDialogue(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(25)
        ),
        scrollable: true,
        content: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.topLeft,
              child: Text(
                "Company Name ",
                style: TextStyle(
                  fontFamily: Constants.outFit,
                  fontSize: 16,
                ),
              ),
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
                    hintText: "Company Name"),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.topLeft,
              child: Text(
                "Person Name ",
                style: TextStyle(
                  fontFamily: Constants.outFit,
                  fontSize: 16,
                ),
              ),
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
                    hintText: "Person Name"),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.topLeft,
              child: Text(
                "Area",
                style: TextStyle(
                  fontFamily: Constants.outFit,
                  fontSize: 16,
                ),
              ),
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
                    hintText: "Area"),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.topLeft,
              child: Text(
                "GST NO. ",
                style: TextStyle(
                  fontFamily: Constants.outFit,
                  fontSize: 16,
                ),
              ),
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
                    hintText: "GST NO."),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.topLeft,
              child: Text(
                "Address ",
                style: TextStyle(
                  fontFamily: Constants.outFit,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              width: w,
              child: TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.brown[100]),
                    contentPadding: EdgeInsets.only(left: 10, top: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: "Address"),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 10),
              alignment: Alignment.topRight,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Okay"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Constants.primaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
