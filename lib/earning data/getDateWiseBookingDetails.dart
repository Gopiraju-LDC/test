import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/constants.dart';
import '../constants/imageConstants.dart';

class DateWiseStatement extends StatefulWidget {
  const DateWiseStatement({super.key});

  @override
  State<DateWiseStatement> createState() => _DateWiseStatementState();
}

class _DateWiseStatementState extends State<DateWiseStatement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '30-9-2023',
          textAlign: TextAlign.right,
          style: poppinsStyle(
            color: Colors.black,
            fontSize: Get.width * 0.055,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Image.asset(
              ImageIcons.WHATSAPP_ICON,
              height: 30,
              width: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            width: Get.width,
            //  height: Get.height,
            margin: EdgeInsets.all(Get.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          '2 Booking',
                          style: poppinsStyle(
                            fontSize: Get.width * 0.04,
                            fontWeight: FontWeight.w400,
                            color: textColor,
                          ),
                        ),
                      ),
                      Text(
                        '₹10000',
                        style: poppinsStyle(
                          fontSize: Get.width * 0.04,
                          fontWeight: FontWeight.w400,
                          color: barColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Text(
                  'Transfer Soon',
                  style: poppinsStyle(
                    fontSize: Get.width * 0.05,
                    color: textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                customBookingDetails(
                  title: 'Light Yagami',
                  amount: '5000',
                  amountType: false,
                  bookingDates: '10am, 26may2023 - 11am,27may2023',
                  bookingId: 'Booking ID : 3215478',
                  mobile: '9878865412'
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                  'Received ',
                  style: poppinsStyle(
                    fontSize: Get.width * 0.05,
                    color: textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                customBookingDetails(
                    title: 'Light Yagami',
                    amount: '5000',
                    amountType: true,
                    bookingDates: '10am, 26may2023 - 11am,27may2023',
                    bookingId: 'Booking ID : 3215478',
                    mobile: '9878865412',
                  transactionId: 'Transaction Id : 369875423',
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
              ],
            )),
      ),
    );
  }

  Widget customBookingDetails({
    //amountType = 0 (Transfer soon)
    //amountType = 1 (Recevied)
    required String title,
    required String mobile,
    required String bookingDates,
    required String bookingId,
    required String amount,
    required bool amountType,
    String transactionId ='',
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: poppinsStyle(
                fontSize: Get.width * 0.05,
                color: textColor,
                fontWeight: FontWeight.w500),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(constraints: BoxConstraints(maxWidth: Get.width * 0.55 ),
                      margin: EdgeInsets.only(top: 8),
                      child: Text(
                        mobile,
                        style: poppinsStyle(
                            fontSize: Get.width * 0.05,
                            color: textColor,
                            fontWeight: FontWeight.w400),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 8),
                      constraints: BoxConstraints(maxWidth: Get.width * 0.58 ),
                      child: Text(
                        bookingDates,
                        style: poppinsStyle(
                            fontSize: Get.width * 0.035,
                            color: textColor,
                            fontWeight: FontWeight.w400),
                      )),
                  Container(
                      // margin: EdgeInsets.only(top: 8),
                      constraints: BoxConstraints(maxWidth: Get.width * 0.58 ),
                      child: Text(
                       bookingId,
                        style: poppinsStyle(
                            fontSize: Get.width * 0.035,
                            color: textColor,
                            fontWeight: FontWeight.w400),
                      )),
                  Visibility(visible: amountType ==true,
                    child: Container(
                      // margin: EdgeInsets.only(top: 8),
                        constraints: BoxConstraints(maxWidth: Get.width * 0.58 ),
                        child: Text(
                          transactionId,
                          style: poppinsStyle(
                              fontSize: Get.width * 0.035,
                              color: textColor,
                              fontWeight: FontWeight.w400),
                        )),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        amount,
                        style: poppinsStyle(
                            fontSize: Get.width * 0.06,
                            color: barColor,
                            fontWeight: FontWeight.w400),
                      )),
                  Container(
                    width: Get.width*0.28,
                      alignment: Alignment.center,
                      child: FittedBox(
                        child: Text(
                          amountType ==false ?'Booking In 3hrs':'Amount Transferred',
                          style: poppinsStyle(
                              fontSize: Get.width * 0.03,
                              color: amountType ==false ?textColor:transferColor,
                              fontWeight: amountType ==false ?FontWeight.w400:FontWeight.w500),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
