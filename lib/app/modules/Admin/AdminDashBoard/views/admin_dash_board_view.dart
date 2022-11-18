import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../../data/Constant.dart';
import '../controllers/admin_dash_board_controller.dart';

class AdminDashBoardView extends StatefulWidget {
  AdminDashBoardView({Key? key}) : super(key: key);

  @override
  State<AdminDashBoardView> createState() => _AdminDashBoardViewState();
}

class _AdminDashBoardViewState extends State<AdminDashBoardView> {
  static List items = ['Sales', 'Production', 'Service', 'Manager'];
  List abc = List.from(items);

  void updatelist(String value) {
    setState(() {
      abc = items.where((element) => items.contains(value.toString())).toList();
      print(abc);
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    Get.put(AdminDashBoardController());
    AdminDashBoardController adminDashBoardController = Get.find();
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
            10.heightBox,
            Container(
              padding: EdgeInsets.only(left: 15,right: 15 ),
              height: 40,
              child: TextFormField(
                onChanged: (value) => updatelist(value),
                decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10),
                    suffixIcon: GestureDetector(
                        child: Icon(
                      CupertinoIcons.search,
                      color: Constants.primaryColor,
                    )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Search'),
              ),
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
                              itemCount: adminDashBoardController.abc.length,
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
                                            adminDashBoardController.abc[index],
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
                                            left: 15, right: 15, bottom: 5),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            print(adminDashBoardController
                                                .abc[index]);
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
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(left: 10, bottom: 10),
                            child: Text(
                              "Messages",
                              style: TextStyle(
                                  fontFamily: Constants.outfitBold,
                                  fontSize: 18),
                            ),
                          ),
                          ListView.builder(
                            itemBuilder: (context, index) {
                              return Obx(() {
                                if (adminDashBoardController.msg.isNotEmpty) {
                                  return Card(
                                    child: ListTile(
                                      title: Text(
                                        adminDashBoardController.msg[index],
                                        style: TextStyle(
                                            fontFamily: Constants.outFitMedium,
                                            fontSize: 16),
                                      ),
                                      subtitle: Text("Sub Title"),
                                      trailing: Container(
                                        width: 80,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    if (adminDashBoardController
                                                            .isAlarm[index] ==
                                                        "false") {
                                                      adminDashBoardController
                                                              .isAlarm[index] =
                                                          "true";
                                                    } else {
                                                      adminDashBoardController
                                                              .isAlarm[index] =
                                                          "false";
                                                    }
                                                  });
                                                  print(adminDashBoardController
                                                      .isAlarm[index]);
                                                },
                                                child: (adminDashBoardController
                                                            .isAlarm[index]
                                                            .toString() ==
                                                        "true")
                                                    ? Icon(Icons.doorbell_sharp)
                                                    : Icon(
                                                        CupertinoIcons.bell)),
                                            GestureDetector(
                                              onTap: () {
                                                adminDashBoardController.msg
                                                    .removeAt(index);
                                                setState(() {});
                                              },
                                              child: Icon(
                                                CupertinoIcons.envelope,
                                                color: Constants.primaryColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                return CircularProgressIndicator();
                              });
                            },
                            itemCount: adminDashBoardController.msg.length,
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
