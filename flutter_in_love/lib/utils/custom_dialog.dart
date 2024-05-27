import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showCustomDialog(
    {required BuildContext context,
    double? width,
    required String title,
    required String content,
    required String actionTitle,
    required VoidCallback onPressed,
    Widget? widget}) {
  Get.dialog(
    AlertDialog(
      title: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
      content: Text(content),
      backgroundColor: Colors.white,
      actions: [
        Container(
          width: width ?? MediaQuery.of(context).size.width * 0.8,
          child: Column(
            children: [
              widget ?? SizedBox(),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text("Cancel"),
                  ),
                  Divider(),
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
