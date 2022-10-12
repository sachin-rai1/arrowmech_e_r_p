import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/Constant.dart';
import '../controllers/manage_dash_board_controller.dart';

class ManageDashBoardView extends GetView<ManageDashBoardController> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, top: 15),
              alignment: Alignment.topLeft,
              child: Text(
                "DashBoard",
                style:
                    TextStyle(fontSize: 25, fontFamily: Constants.outFitMedium),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                  ),
                  width: w / 2.1,
                  child: Card(
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Constants.secondaryColor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      color: Constants.secondaryColor,
                      padding: const EdgeInsets.only(bottom: 20, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset(
                              "assets/icons/user.png",
                              height: 50,
                              width: 50,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Sales',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: Constants.outFitMedium),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "djskdjf ashdkjh Desum",
                              style: TextStyle(
                                  fontFamily: Constants.outFit, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 25,
                            padding: const EdgeInsets.only(left: 10),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text("View Task"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Constants.primaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 10,
                    right: 10,
                  ),
                  width: w / 2.1,
                  child: Card(
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Constants.secondaryColor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      color: Constants.secondaryColor,
                      padding: const EdgeInsets.only(bottom: 20, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset(
                              "assets/icons/user.png",
                              color: Colors.grey,
                              height: 50,
                              width: 50,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Production',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: Constants.outFitMedium),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "djskdjf ashdkjh Desum",
                              style: TextStyle(
                                  fontFamily: Constants.outFit, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 25,
                            padding: const EdgeInsets.only(left: 10),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text("View Task"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Constants.primaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                  ),
                  width: w / 2.1,
                  child: Card(
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Constants.secondaryColor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      color: Constants.secondaryColor,
                      padding: const EdgeInsets.only(bottom: 20, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset(
                              "assets/icons/user.png",
                              color: Colors.grey,
                              height: 50,
                              width: 50,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Service',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: Constants.outFitMedium),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "djskdjf ashdkjh Desum",
                              style: TextStyle(
                                  fontFamily: Constants.outFit, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 25,
                            padding: const EdgeInsets.only(left: 10),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text("View Task"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Constants.primaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 10,
                    right: 10,
                  ),
                  width: w / 2.1,
                  child: Card(
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Constants.secondaryColor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      color: Constants.secondaryColor,
                      padding: const EdgeInsets.only(bottom: 20, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset(
                              "assets/icons/user.png",
                              color: Colors.grey,
                              height: 50,
                              width: 50,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Manager',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: Constants.outFitMedium),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "djskdjf ashdkjh Desum",
                              style: TextStyle(
                                  fontFamily: Constants.outFit, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 25,
                            padding: const EdgeInsets.only(left: 10),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text("View Task"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Constants.primaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
