import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:test_application/earning%20data/customOptionWidget.dart';

import '../constants/constants.dart';
import '../constants/imageConstants.dart';
import 'getDateWiseBookingDetails.dart';

class StatementView extends StatefulWidget {
  const StatementView({super.key});

  @override
  State<StatementView> createState() => _StatementViewState();
}

class _StatementViewState extends State<StatementView> {
  @override
  Widget build(BuildContext context) {
    return Container(
            alignment: Alignment.centerRight,
              width: Get.width ,
              height: Get.height*0.65,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Download Statment  ',
                          style: poppinsStyle(
                              fontSize: Get.width * 0.035,
                              color: barColor,
                              fontWeight: FontWeight.w400),
                        ),
                        Image.asset(ImageIcons.DOWNLOAD_ICON,
                        height: 14,
                        width: 14,)
                      ],
                    ),
                  ),
                  Container(
                    height: Get.height*0.62,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context , index){
                          DateTime datee = DateTime.now();
                          //dateTime = DateFormat('dd-MM-yyyy,').format(datee);
                          return CustomOptionWidget(title: getTitle(index),
                            onTap: (){
                            Get.to(const DateWiseStatement());
                            },);
                        }),
                  )
                ],
              ));


  }
  String getTitle(int index){
    String dateTime ;
    DateTime datee = DateTime.now();
    if(index ==0){
      dateTime = "Today";
    }
    else if (index ==1)
      {
      dateTime = 'Yesterday';
    }
    else {
     dateTime =  DateFormat('dd-MM-yyyy').format(datee.subtract(Duration(days: index)));
    }



    return dateTime;
  }
}
