import 'package:arrowmech_e_r_p/app/data/Constant.dart';
import 'package:flutter/material.dart';

Widget createDrawerBodyItem({
  String ? image,
  IconData? iconData,
  required String text,
  required GestureTapCallback onTap,

}) {
  return Padding(
    padding: EdgeInsets.all(0),
    child: ListTile(
      title: Row(
        children: <Widget>[
          (image != null)?
          Image.asset(image,
            height: 28,
            width: 28,
          ):Icon(iconData , color: Colors.black,),

          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: Constants.outFit,
              ),
            ),
          )
        ],
      ),
      onTap: onTap,
    ),
  );
}
