import 'package:arrowmech_e_r_p/app/data/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import '../../Navigation/navigationDrawer.dart';
import '../controllers/lead_controller.dart';

class LeadView extends GetView<LeadController> {
  @override
  Widget build(BuildContext context) {
    Get.put(LeadController());
    const htmlData =
        r"""<div class="mapouter"><div class="gmap_canvas"><iframe class="gmap_iframe" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=1350&amp;height=353&amp;hl=en&amp;q=india  SNALCO, Block No. 604/2, Kosamba, NH-8, Gujarat 39412&amp;t=&amp;z=11&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe><a href="https://mcpenation.com/">https://mcpenation.com</a></div><style>.mapouter{position:relative;text-align:right;width:135px;height:200px;}.gmap_canvas {overflow:hidden;background:none!important;width:135px;height:200px;}.gmap_iframe {width:135!important;height:200px!important;}</style></div>""";
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: LeadNavigationDrawer(),
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Text(
                "Leads Form",
                style:
                    TextStyle(fontFamily: Constants.outfitBold, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                width: w,
                decoration: BoxDecoration(
                  color: Constants.secondaryColor,
                  // color : Colors.red
                ),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Name",
                          style: TextStyle(
                              fontFamily: Constants.outFitMedium, fontSize: 16),
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
                                hintStyle: TextStyle(color: Colors.brown[100]),
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
                                hintStyle: TextStyle(color: Colors.brown[100]),
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
                              fontFamily: Constants.outFitMedium, fontSize: 16),
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
                                hintStyle: TextStyle(color: Colors.brown[100]),
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
                                hintStyle: TextStyle(color: Colors.brown[100]),
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
                            contentPadding: EdgeInsets.only(left: 10, top: 10),
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
                                hintStyle: TextStyle(color: Colors.brown[100]),
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
                                hintStyle: TextStyle(color: Colors.brown[100]),
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
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ADD",
                            style:
                                TextStyle(fontFamily: Constants.outFitMedium),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.add_circle_outline),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Constants.primaryColor),
                    )
                  ],
                ),
              ),
            ),
            Container(
                height: 200,
                width: w / 1.1,
                decoration: BoxDecoration(border: Border.all()),
                child: Center(child: Text("Google Maps"))),
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
                          style: TextStyle(fontFamily: Constants.outFitMedium),
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
                          "End Trip",
                          style: TextStyle(fontFamily: Constants.outFitMedium),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.add_circle_outline),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Constants.primaryColor),
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
