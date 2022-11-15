import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:outline_search_bar/outline_search_bar.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../../data/Constant.dart';
import '../controllers/admin_dash_board_controller.dart';

class AdminDashBoardView extends GetView<AdminDashBoardController> {
  @override
  Widget build(BuildContext context) {
    Get.put(AdminDashBoardController());
    final w = MediaQuery.of(context).size.width;
    // final spaceBetween = MainAxisAlignment.spaceBetween;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
            Expanded(
              child: Scaffold(
                body: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10, top: 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            fit: FlexFit.loose,
                            child: GridView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: 4,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
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
                                      child: Center(
                                        child: ListTile(
                                          title: Text(
                                            controller.items[index],
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontFamily:
                                                    Constants.outfitBold),
                                          ),
                                          subtitle: Text("Lorem Ispum Dior"),
                                        ),
                                      ),
                                      footer: Container(
                                        padding: EdgeInsets.only(
                                            left: 15, right: 20, bottom: 5),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            print(controller.items[index]);
                                          },
                                          child: Text("View Task"),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Constants.primaryColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          VxBox(
                                  child: "Messages"
                                      .text
                                      .xl
                                      .fontFamily(Constants.outfitBold)
                                      .align(TextAlign.start)
                                      .make())
                              .alignTopLeft
                              .px16
                              .make(),
                          ListView.builder(
                            itemBuilder: (context, index) {
                              return Obx(() {
                                if (controller.msg.isNotEmpty) {
                                  return ListTile(
                                    title: Text(controller.msg[index]),
                                    subtitle: Text("Sub Title"),
                                    trailing: Container(
                                      width: 100,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(CupertinoIcons.bell),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Constants.primaryColor,
                                            ),
                                              onPressed: () {
                                                controller.msg.removeAt(index);
                                                build(context);
                                              },
                                              child: Text(
                                                "Read",
                                                style: TextStyle(
                                                    fontFamily:
                                                        Constants.outFit),
                                              )),
                                        ],
                                      ),
                                    ),
                                  );
                                }
                                return CircularProgressIndicator();
                              });
                            },
                            itemCount: controller.msg.length,
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
