import 'package:flutter/material.dart';
import 'package:get/get.dart';

void openBottomSheet(
    {double? bottomSheetHeight,
    EdgeInsetsGeometry? paddingHorizontal,
    EdgeInsetsGeometry? paddingTitle,
    List<Widget>? widgets,
    String title = "",
    double? fontSize,
    double? scaleElementWidth,
    BorderRadiusGeometry? borderRadius}) {
  Get.bottomSheet(
    SizedBox(
      height: bottomSheetHeight,
      child: Padding(
        padding:
            paddingHorizontal ?? const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: paddingTitle ?? const EdgeInsets.symmetric(vertical: 25),
              child: Row(
                children: [
                  SizedBox(width: scaleElementWidth),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: fontSize ?? 18,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
            ),
            if (widgets != null) ...widgets,
          ],
        ),
      ),
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius ?? BorderRadius.circular(30),
    ),
  );
}
