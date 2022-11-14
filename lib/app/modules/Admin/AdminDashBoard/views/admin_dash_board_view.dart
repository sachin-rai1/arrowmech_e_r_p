import 'package:arrowmech_e_r_p/app/modules/Admin/AdminSalesTarget/views/admin_sales_target_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:outline_search_bar/outline_search_bar.dart';
import '../../../../data/Constant.dart';
import '../controllers/admin_dash_board_controller.dart';

class AdminDashBoardView extends GetView<AdminDashBoardController> {
  @override
  Widget build(BuildContext context) {
    Get.put(AdminDashBoardController());
    // final w = MediaQuery.of(context).size.width;
    // final spaceBetween = MainAxisAlignment.spaceBetween;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, top: 15),
              alignment: Alignment.topLeft,
              child: Text(
                "Dashboard",
                style:
                    TextStyle(fontSize: 18, fontFamily: Constants.outfitBold),
              ),
            ),
            Container(
                height: 65,
                padding:
                    EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 10),
                child: OutlineSearchBar(
                  enableSuggestions: true,
                  borderColor: Colors.grey,
                  searchButtonIconColor: Colors.grey,
                  hintText: "Search",
                  borderRadius: BorderRadius.circular(10),
                )),
            SizedBox(
              height: 10,
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, bottom: 10),
                    child: Card(
                      child: GridTile(
                        header: Container(
                          padding: EdgeInsets.only(left: 15),
                          alignment: Alignment.topLeft,
                          child: Image.asset(
                            "assets/icons/user.png",
                            color: Colors.grey,
                            height: 60,
                            width: 60,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: ListTile(
                              title: Text(
                                controller.items[index],
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: Constants.outfitBold),
                              ),
                              subtitle: Text("Lorem Ispum Dior"),
                            ),
                          ),
                        ),
                        footer: Container(
                          padding:
                              EdgeInsets.only(left: 15, right: 20, bottom: 5),
                          child: ElevatedButton(
                            onPressed: () {
                              print(controller.items[index]);
                            },
                            child: Text("View Task"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Constants.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Flexible(
              child: Column(
                children: [
                  Text(
                    "Messages",
                    style: TextStyle(fontFamily: Constants.outfitBold),
                  ),
                  Flexible(
                    child: ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text("Hii"),
                        subtitle: Text("Sub Title"),
                        trailing: Icon(CupertinoIcons.bell),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
