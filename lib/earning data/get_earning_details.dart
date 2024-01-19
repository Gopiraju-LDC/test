import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/constants.dart';
import '../constants/imageConstants.dart';
import 'get_profileView.dart';

class EarningDetailView extends StatefulWidget {
  const EarningDetailView({super.key});

  @override
  State<EarningDetailView> createState() => _EarningDetailViewState();
}

class _EarningDetailViewState extends State<EarningDetailView> {
  TextEditingController? _textEditingController;

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
              Get.to(const GetProfileView());
            },
            icon: Image.asset(
              Iconss.CALENDAR_ICON,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            width: Get.width,
            height: Get.height,
            margin: EdgeInsets.all(Get.width * 0.05),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.01,
                ),
                searchBox(),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Statement',
                      style: TextStyle(
                          fontSize: Get.width * 0.04,
                          color: textColor,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: Get.width * 0.1,
                    ),
                    Column(
                      children: [
                        Text(
                          'Booking Earnings',
                          style: TextStyle(
                              fontSize: Get.width * 0.04,
                              color: textColor,
                              fontWeight: FontWeight.w500),
                        ),
                        Container(
                          height: Get.width * 0.01,
                          width: Get.width * 0.18,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: barColor,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                totalEarningBlockingBox(),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Container(height: Get.height * 0.6, child: EarningList()),
              ],
            )),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      // margin: EdgeInsets.only(top: Get.height * 0.02),

      height: Get.height * 0.06,
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
                style: TextStyle(color: Colors.grey),
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
                    hintStyle: TextStyle(
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
                  style: TextStyle(
                      fontSize: Get.width * 0.06,
                      color: textColor,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Get.width * 0.01,
                ),
                Text(
                  'Earnings',
                  style: TextStyle(
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
                  style: TextStyle(
                      fontSize: Get.width * 0.06,
                      color: textColor,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Get.width * 0.01,
                ),
                Text(
                  'Bookings',
                  style: TextStyle(
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
          onTap: () async {},
          child: Container(
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
                  style: TextStyle(
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
                              style: TextStyle(
                                  fontSize: Get.width * 0.04,
                                  color: textColor,
                                  fontWeight: FontWeight.w400),
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 8),
                            width: Get.width*0.62,
                            child: Text(
                              '10am, 26may2023 - 11am,27may2023',
                              style: TextStyle(
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
                              style: TextStyle(
                                  fontSize: Get.width * 0.06,
                                  color: barColor,
                                  fontWeight: FontWeight.w400),
                            )),
                        Container(
                            alignment: Alignment.center,

                            child: Text(
                              'View More',
                              style: TextStyle(
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
