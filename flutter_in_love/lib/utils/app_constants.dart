import 'package:flutter/material.dart';

class AppConstants {
  // Colors
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color primaryColor = Color(0xFFEC5E97);
}

class AppUtils {
  // Sizes
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
