
import 'package:flutter/material.dart';

import '../MainScreen/Dashboard.dart';

dark_blue_button(BuildContext context, String text){
  return  ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue ,
      // fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: getFontSize(12.0, context), horizontal: getFontSize(12.0, context)),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: getFontSize(16, context)),
      ),
    ),
  );
}






light_blue_button(BuildContext context, String text){
  return  ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xffE2EDFF),
      // fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: getFontSize(12.0, context), horizontal: getFontSize(12.0, context)),
      child: Text(
        text,
        style: TextStyle(color: Colors.blue, fontSize: getFontSize(16, context)),
      ),
    ),
  );
}