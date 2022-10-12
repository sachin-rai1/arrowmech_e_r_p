import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../../data/Constant.dart';
import '../controllers/admin_sales_report_date_wise_controller.dart';
import 'package:map_location_picker/map_location_picker.dart';

class AdminSalesReportDateWiseView
    extends GetView<AdminSalesReportDateWiseController> {
  @override
  Widget build(BuildContext context) {
    Get.put(AdminSalesReportDateWiseController());
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Image.asset(
            'assets/images/mainLogo.png',
            height: 50,
            width: 124,
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
            child: Column(children: [
              Container(
                // alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Monthly Sales Report of Date : ${DateFormat("dd-MM-yyyy").format(controller.date)}",
                  style:
                      TextStyle(fontFamily: Constants.outfitBold, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: h / 1.7,
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
                            Obx(() => DropdownButton(
                                  hint: Text(
                                    'Select',
                                    style: TextStyle(
                                        fontFamily: Constants.outFitMedium,
                                        fontSize: 16,
                                        color: Constants.primaryColor),
                                  ),
                                  onChanged: (newValue) {
                                    controller.selected(newValue);
                                  },
                                  value: controller.selected.value == ""
                                      ? null
                                      : controller.selected.value,
                                  items: controller.status.map((selectedType) {
                                    return DropdownMenuItem(
                                      child: Text(
                                        selectedType,
                                        style: TextStyle(
                                            fontFamily: Constants.outFitMedium,
                                            fontSize: 16,
                                            color: Constants.primaryColor),
                                      ),
                                      value: selectedType,
                                    );
                                  }).toList(),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                // height: h / 2.6,
                width: w / 1.1,
                decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Text("Invoice Number"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Text("121545654554"),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 20, bottom: 10),
                              width: 2,
                              color: Color(0xFF757678),
                              height: 45,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 10),
                              child: Text("Invoice Amount"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50, top: 10),
                              child: Text("70000"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Received"), Text("40000")],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Remaining"), Text("30000")],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Material Supplied",
                          style: TextStyle(
                              fontFamily: Constants.outFitMedium, fontSize: 16),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: h / 10,
                        width: w / 1.2,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, top: 5),
                          child: SingleChildScrollView(
                            child: Text(
                              "Material Supplied",
                              style: TextStyle(
                                  color: Colors.brown[100],
                                  fontFamily: Constants.outFit),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Remarks",
                          style: TextStyle(
                              fontFamily: Constants.outFitMedium, fontSize: 16),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: 30,
                        width: w / 1.2,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: SingleChildScrollView(
                            child: Text(
                              "Remarks",
                              style: TextStyle(
                                  color: Colors.brown[100],
                                  fontFamily: Constants.outFit),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(children: [
                    Container(
                      child: Text(
                        "Rider Travel Distance",
                        style: TextStyle(
                            fontFamily: Constants.outFitMedium, fontSize: 15),
                      ),
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 20, bottom: 10),
                    ),
                    Container(
                      height: h,
                      width: w / 1.1,
                      // decoration: BoxDecoration(
                      //   border: Border.all(),
                      //   borderRadius: BorderRadius.circular(10),
                      // ),
                      child: Center(
                          child: Scaffold(
                        body: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            PlacesAutocomplete(
                                searchController: controller.mapController,
                                apiKey: Constants.apiString,
                                mounted: GetPlatform.isAndroid,
                                showBackButton: false,
                                onGetDetailsByPlaceId:
                                    (PlacesDetailsResponse? result) {
                                  Obx(() {
                                    if (result != null) {
                                      controller.autoCompletePlace.value =
                                          result.result.formattedAddress!;
                                    }
                                    return Text("");
                                  });
                                  const Spacer();
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Google Map Location Picker\nMade By Arvind 😃 with Flutter 🚀",
                                      textAlign: TextAlign.center,
                                      textScaleFactor: 1.2,
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  );
                                  TextButton(
                                    onPressed: () => Clipboard.setData(
                                      const ClipboardData(
                                          text: "https://www.mohesu.com"),
                                    ).then(
                                      (value) => ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text("Copied to Clipboard"),
                                        ),
                                      ),
                                    ),
                                    child: const Text("https://www.mohesu.com"),
                                  );
                                  const Spacer();
                                  Center(
                                    child: ElevatedButton(
                                      child: const Text('Pick location'),
                                      onPressed: () async {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return MapLocationPicker(
                                                apiKey:
                                                    Constants.apiString,
                                                canPopOnNextButtonTaped: true,
                                                currentLatLng: const LatLng(
                                                    29.121599, 76.396698),
                                                onNext:
                                                    (GeocodingResult? result) {
                                                  Obx(() {
                                                    if (result != null) {
                                                      controller
                                                              .autoCompletePlace
                                                              .value =
                                                          result
                                                              .formattedAddress!;
                                                    }
                                                    return Text("");
                                                  });
                                                },
                                                onSuggestionSelected:
                                                    (PlacesDetailsResponse?
                                                        result) {
                                                  Obx(() {
                                                    if (result != null) {
                                                      controller
                                                              .autoCompletePlace
                                                              .value =
                                                          result.result
                                                              .formattedAddress!;
                                                    }
                                                    return Text("");
                                                  });
                                                },
                                              );
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                  );

                                  const Spacer();
                                  ListTile(
                                    title: Text("Geocoded Address:"),
                                  );
                                  ListTile(
                                    title: Text("Autocomplete Address:"),
                                  );
                                  const Spacer(
                                    flex: 3,
                                  );
                                })
                          ],
                        ),
                      )),
                    ),
                    // child: MapLocationPicker(
                    // padding: EdgeInsets.all(10),
                    //   bottomCardColor: Colors.redAccent,
                    //   topCardColor: Colors.redAccent,
                    //   borderRadius: BorderRadius.circular(50),
                    //   // searchController: controller.mapController,
                    //   showBackButton: false,
                    //   compassEnabled: true,
                    //   apiKey: Constants.apiString,
                    //   onNext: (GeocodingResult? result) {
                    //     Obx(() {
                    //       if (result != null) {
                    //         controller.autoCompletePlace.value =
                    //             result.formattedAddress!;
                    //       }
                    //       return Container();
                    //     });
                    //   },
                    //   currentLatLng: const LatLng(29.121599, 76.396698),
                    //   canPopOnNextButtonTaped: true,
                    //   onSuggestionSelected:
                    //       (PlacesDetailsResponse? result) {
                    //     Obx(() {
                    //       if (result != null) {
                    //         controller.autoCompletePlace.value =
                    //             result.result.formattedAddress!;
                    //       }
                    //       return Container();
                    //     });
                    //   },
                    // ),
                  ])),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 20),
                    height: 35,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Start Trip",
                            style:
                                TextStyle(fontFamily: Constants.outFitMedium),
                          ),
                          // SizedBox(width: 5,),
                          // Icon(Icons.add_circle_outline),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Constants.primaryColor),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 35,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "End Trip ",
                            style:
                                TextStyle(fontFamily: Constants.outFitMedium),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Constants.primaryColor),
                    ),
                  ),
                ],
              ),
            ])));
  }
}
