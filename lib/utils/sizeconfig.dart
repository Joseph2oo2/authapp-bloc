import 'package:flutter/material.dart';

class SizeConfig{
  static double? screenWidth;
  static double? screenHeight;

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  void init(BuildContext context) {
    screenWidth = getScreenWidth(context);
    screenHeight = getScreenHeight(context);

  }
}