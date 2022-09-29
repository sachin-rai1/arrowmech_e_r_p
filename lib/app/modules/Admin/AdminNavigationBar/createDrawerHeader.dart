import 'package:arrowmech_e_r_p/app/data/Constant.dart';
import 'package:flutter/material.dart';

Widget createDrawerHeader() {
  return DrawerHeader(
    margin: EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
      color: Constants.primaryColor,
    ),
    child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          alignment: Alignment.center,
          child: Row(
            children: [
              Image.asset(
                "assets/icons/user.png",
                height: 60,
                width: 60,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Admin",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: Constants.outFit,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        )),
  );
}
