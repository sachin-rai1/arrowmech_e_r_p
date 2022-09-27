import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../data/Constant.dart';

import '../controllers/company_wise_target_controller.dart';

class CompanyWiseTargetView extends GetView<CompanyWiseTargetController> {
  @override
  Widget build(BuildContext context) {
    Get.put(CompanyWiseTargetController());
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
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
              icon: const Icon(Icons.arrow_back_outlined),
              color: Constants.primaryColor,
              onPressed: () {
                Get.back();
              },

            );
          }),
        ),
        body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Text(
                    "Monthly Sales Target",
                    style: TextStyle(
                        fontFamily: Constants.outfitBold, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    height: h / 1.5,
                    width: w,
                    decoration: BoxDecoration(
                      color: Constants.secondaryColor,
                    ),
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Name",
                              style: TextStyle(
                                  fontFamily: Constants.outFitMedium,
                                  fontSize: 16),
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              height: 50,
                              width: w / 2.2,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintStyle:
                                        TextStyle(color: Colors.brown[100]),
                                    contentPadding: EdgeInsets.only(left: 10),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    hintText: 'First Name '),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              height: 50,
                              width: w / 2.2,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintStyle:
                                        TextStyle(color: Colors.brown[100]),
                                    contentPadding: EdgeInsets.only(left: 10),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    hintText: "Last Name"),
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
                                hintText: 'Contact Number'),
                          ),
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Company Details",
                              style: TextStyle(
                                  fontFamily: Constants.outFitMedium,
                                  fontSize: 16),
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              height: 50,
                              width: w / 2.2,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintStyle:
                                        TextStyle(color: Colors.brown[100]),
                                    contentPadding: EdgeInsets.only(left: 10),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    hintText: 'Company Name '),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              height: 50,
                              width: w / 2.2,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintStyle:
                                        TextStyle(color: Colors.brown[100]),
                                    contentPadding: EdgeInsets.only(left: 10),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    hintText: "Company Number"),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          height: 100,
                          width: w,
                          child: TextFormField(
                            maxLines: 50,
                            decoration: InputDecoration(
                                hintStyle: TextStyle(color: Colors.brown[100]),
                                contentPadding:
                                    EdgeInsets.only(left: 10, top: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                hintText: 'Company Address'),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              height: 50,
                              width: w / 2.2,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintStyle:
                                        TextStyle(color: Colors.brown[100]),
                                    contentPadding: EdgeInsets.only(left: 10),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    hintText: 'City'),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              height: 50,
                              width: w / 2.2,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintStyle:
                                        TextStyle(color: Colors.brown[100]),
                                    contentPadding: EdgeInsets.only(left: 10),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    hintText: "State"),
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
                                hintText: 'Zip'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text(
                                "Status  : ",
                                style: TextStyle(
                                    fontFamily: Constants.outFitMedium,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Successful" , style: TextStyle(
                                  fontFamily: Constants.outFitMedium,
                                  fontSize: 16,color: Constants.primaryColor
                              ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
