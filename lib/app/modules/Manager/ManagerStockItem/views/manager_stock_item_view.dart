import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../data/Constant.dart';
import '../../ManagerNavigation/navigationDrawer.dart';
import '../controllers/manager_stock_item_controller.dart';

class ManagerStockItemView extends GetView<ManagerStockItemController> {
  @override
  Widget build(BuildContext context) {
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
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10 , top:  10),
              alignment: Alignment.topLeft,
              child: Text(
                'Items In Stock',
                style: TextStyle(fontSize: 25 ,
                fontFamily: Constants.outFitMedium),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Items Name" ,
                        style: TextStyle(
                        fontSize: 15 ,
                        fontFamily: Constants.outFitMedium
                      ),),
                      Text("In Stock" ,
                        style: TextStyle(
                            fontSize: 15 ,
                            fontFamily: Constants.outFitMedium
                        ),),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(child: ListView.builder(itemBuilder: (context , index){
              return Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Items Name" , style: TextStyle(
                            fontSize: 15 ,
                            fontFamily: Constants.outFitMedium
                        ),),
                        Text("1365" , style: TextStyle(
                            fontSize: 15 ,
                            fontFamily: Constants.outFitMedium
                        ),),
                      ],
                    ),
                  ),
                ),
              );
            }))
          ],
        ),
      ),
    );
  }
}
