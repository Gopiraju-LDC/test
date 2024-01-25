import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:test_application/earning%20data/statment.dart';

import '../constants/constants.dart';
import '../constants/imageConstants.dart';
import 'booking_details.dart';
import 'custom_calender.dart';
import 'get_profileView.dart';

class EarningDetailView extends StatefulWidget {
  const EarningDetailView({super.key});

  @override
  State<EarningDetailView> createState() => _EarningDetailViewState();
}

class _EarningDetailViewState extends State<EarningDetailView> {
  TextEditingController? _textEditingController;
  int selcetedStatement = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Earnings',
          textAlign: TextAlign.right,
          style: poppinsStyle(
            color: Colors.black,
            fontSize: Get.width * 0.05,
            fontWeight: FontWeight.w600,
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
          IconButton(
            onPressed: () {
              Get.to(const CustomCalender());
            },
            icon: Image.asset(
              Iconss.CALENDAR_ICON,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.01,
              ),
              searchBox(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          selcetedStatement =0;
                        });
                      },
                      child: Column(
                        children: [
                          Text(
                            'Statement',
                            style: poppinsStyle(
                                fontSize: Get.width * 0.04,
                                color: textColor,
                                fontWeight:  selcetedStatement==0 ? FontWeight.w500: FontWeight.w400),
                          ),
                          Visibility(
                            visible: selcetedStatement==0,
                            child: Container(
                              height: Get.width * 0.01,
                              width: Get.width * 0.16,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: barColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(
                      width: Get.width * 0.1,
                    ),
                    GestureDetector(
                        onTap: (){
                          setState(() {
                            selcetedStatement =1;
                          });
                        },
                      child: Column(
                        children: [
                          Text(
                            'Booking Earnings',
                            style: poppinsStyle(
                                fontSize: Get.width * 0.04,
                                color: textColor,
                                fontWeight: selcetedStatement==1 ? FontWeight.w500: FontWeight.w400),
                          ),
                          Visibility(
                              visible: selcetedStatement==1,
                            child: Container(
                              height: Get.width * 0.01,
                              width: Get.width * 0.18,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: barColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            selcetedStatement==0?StatementView():
            Container(
                margin: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                child: earningView()),
            ],
          )),
    );
  }

  Widget earningView()
  {
    return Column( children: [
      SizedBox(
        height: Get.height * 0.02,
      ),
      totalEarningBlockingBox(),
      SizedBox(
        height: Get.height * 0.02,
      ),
      Container(height: Get.height * 0.51, child: EarningList()),
    ],);

  }
  Widget searchBox() {
    return Container(
      height: Get.height * 0.06,
      margin: EdgeInsets.all(Get.width * 0.05),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(30)),
              child: TextField(
                controller: _textEditingController,
                onChanged: (value) {
                 
                },
                textAlign: TextAlign.justify,
                textAlignVertical: TextAlignVertical.top,
                style: poppinsStyle(color: Colors.grey),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Container(
                      margin: EdgeInsets.only(left: 15),
                      child: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    suffix: VerticalDivider(
                      color: Colors.black,
                      width: Get.width * 0.04,
                      //indent: Get.width,
                      endIndent: Get.bottomBarHeight,
                    ),
                    suffixIcon: Container(
                      margin: EdgeInsets.only(right: 15),
                      child: const Icon(
                        Icons.mic,
                        color: Colors.grey,
                      ),
                    ),
                    hintText: 'search By Booking Id/ Mobile Number',
                    hintStyle: poppinsStyle(
                      color: Colors.grey,
                      fontSize: Get.width*0.035,
                    ),contentPadding: EdgeInsets.only(bottom: 20)
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget totalEarningBlockingBox() {
    return Container(
      height: Get.height * 0.11,
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: backgroundColor),
      child: Row(children: [
        Container(
            width: Get.width * 0.42,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '₹92,695',
                  style: poppinsStyle(
                      fontSize: Get.width * 0.06,
                      color: textColor,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Get.width * 0.01,
                ),
                Text(
                  'Earnings',
                  style: poppinsStyle(
                    fontSize: Get.width * 0.03,
                    color: secondTextColor,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            )),
        VerticalDivider(color: Colors.black),
        Container(
            width: Get.width * 0.42,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '20',
                  style: poppinsStyle(
                      fontSize: Get.width * 0.06,
                      color: textColor,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Get.width * 0.01,
                ),
                Text(
                  'Bookings',
                  style: poppinsStyle(
                    fontSize: Get.width * 0.03,
                    color: secondTextColor,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            )),
      ]),
    );
  }
}

class EarningList extends StatelessWidget {
  EarningList();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () async {
            Get.to(BookingDetails());
          },
          child:
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 10, ),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Light Yagami',
                  style: poppinsStyle(
                      fontSize: Get.width * 0.05,
                      color: textColor,
                      fontWeight: FontWeight.w400),
                ),
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          width: Get.width*0.55,
                            child: Text(
                              '9878865412',
                              style: poppinsStyle(
                                  fontSize: Get.width * 0.04,
                                  color: textColor,
                                  fontWeight: FontWeight.w400),
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 8),
                            width: Get.width*0.62,
                            child: Text(
                              '10am, 26may2023 - 11am,27may2023',
                              style: poppinsStyle(
                                  fontSize: Get.width * 0.035,
                                  color: textColor,
                                  fontWeight: FontWeight.w400),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            child: Text(
                              '₹5000',
                              style: poppinsStyle(
                                  fontSize: Get.width * 0.06,
                                  color: barColor,
                                  fontWeight: FontWeight.w400),
                            )),
                        Container(
                            alignment: Alignment.center,

                            child: Text(
                              'View More',
                              style: poppinsStyle(
                                  fontSize: Get.width * 0.04,
                                  color: barColor,
                                  fontWeight: FontWeight.w400),
                            )),
                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
