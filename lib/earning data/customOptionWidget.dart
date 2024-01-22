import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../constants/constants.dart';

class CustomOptionWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  CustomOptionWidget({
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
            left: Get.width * 0.05,
            right: Get.width * 0.05,
            top: Get.width * 0.05),
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: poppinsStyle(
                  fontSize: Get.width * 0.04,
                  fontWeight: FontWeight.w400,
                  color: textColor,
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 22.0,
              color: textColor,
            ),
          ],
        ),
      ),
    );
  }
}
