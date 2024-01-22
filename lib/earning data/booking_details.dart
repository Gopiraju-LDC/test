import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../constants/constants.dart';
import '../constants/imageConstants.dart';
import 'get_profileView.dart';

class BookingDetails extends StatefulWidget {
  const BookingDetails({super.key});

  @override
  State<BookingDetails> createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Id : 1654789321',
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
          Image.asset(ImageIcons.DOWNLOAD_ICON,
            height: 20,
            width: 20,)
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
                Text(
                  'Booking Details',
                  style: poppinsStyle(
                    fontSize: Get.width * 0.05,
                    color: textColor,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
                ),
                Container(
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
                        'Light Yagami',
                        style: poppinsStyle(
                            fontSize: Get.width * 0.05,
                            color: textColor,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(top: 8),
                                  width: Get.width * 0.55,
                                  child: Text(
                                    '9878865412',
                                    style: poppinsStyle(
                                        fontSize: Get.width * 0.05,
                                        color: textColor,
                                        fontWeight: FontWeight.w400),
                                  )),
                              Container(
                                  margin: EdgeInsets.only(top: 8),
                                  width: Get.width * 0.62,
                                  child: Text(
                                    'Check In : 11am,27may2023',
                                    style: poppinsStyle(
                                        fontSize: Get.width * 0.035,
                                        color: textColor,
                                        fontWeight: FontWeight.w400),
                                  )),
                              Container(
                                  // margin: EdgeInsets.only(top: 8),
                                  width: Get.width * 0.62,
                                  child: Text(
                                    'Check Out : 10am, 26may2023 ',
                                    style: poppinsStyle(
                                        fontSize: Get.width * 0.035,
                                        color: textColor,
                                        fontWeight: FontWeight.w400),
                                  )),
                              Container(
                                  // margin: EdgeInsets.only(top: 8),
                                  width: Get.width * 0.62,
                                  child: Text(
                                    'Duration : 1day',
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
                                    'Trip Earnings',
                                    style: poppinsStyle(
                                        fontSize: Get.width * 0.04,
                                        color: textColor,
                                        fontWeight: FontWeight.w400),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                  'Booking Details',
                  style: poppinsStyle(
                    fontSize: Get.width * 0.05,
                    color: textColor,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.015,
                ),
                SmoothStarRating(
                  allowHalfRating: false,
                  starCount: 5,
                  rating: 5.0,
                  size: 20,
                  color: ratingColor,
                  borderColor: ratingColor,
                  filledIconData: Icons.star,
                  halfFilledIconData: Icons.star_half,
                  defaultIconData: Icons.star_border,
                  spacing: .5,
                ),
                SizedBox(
                  height: Get.height * 0.015,
                ),
                Container(
                  constraints: BoxConstraints(maxHeight: Get.height * 0.2),
                  width: Get.width * 0.9,
                  child: Text(
                    'The car condition is Excellent and Good condition I Get Good '
                    'Service From Car Owner The car Is In Excellent Condition I Booked'
                    'For 6 Days  . I Won’t Get Any Issue In The 6 Days',
                    style: poppinsStyle(
                      fontSize: Get.width * 0.03,
                      color: textColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                getSimmerEffect(),
              ],
            )),
      ),
    );
  }

  Widget getSimmerEffect() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 10,
                right: 10,
              ),
              width: Get.width * 0.62,
              height: Get.height * 0.15,
              decoration: BoxDecoration(
                  color: simmerColor, borderRadius: BorderRadius.circular(15)),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, right: 10, bottom: 10),
                  width: Get.width * 0.3,
                  height: Get.height * 0.15,
                  decoration: BoxDecoration(
                      color: simmerColor,
                      borderRadius: BorderRadius.circular(15)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 5, bottom: 10),
                  width: Get.width * 0.3,
                  height: Get.height * 0.15,
                  decoration: BoxDecoration(
                      color: simmerColor,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
               // top: 10,
                right: 10,
              ),
              width: Get.width * 0.62,
              height: Get.height * 0.15,
              decoration: BoxDecoration(
                  color: simmerColor, borderRadius: BorderRadius.circular(15)),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                right: 10,
              ),
              width: Get.width * 0.62,
              height: Get.height * 0.15,
              decoration: BoxDecoration(
                  color: simmerColor, borderRadius: BorderRadius.circular(15)),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, ),
              width: Get.width * 0.24,
              height: Get.height * 0.4,
              decoration: BoxDecoration(
                  color: simmerColor, borderRadius: BorderRadius.circular(15)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, ),
              width: Get.width * 0.24,
              height: Get.height * 0.12,
              decoration: BoxDecoration(
                  color: simmerColor, borderRadius: BorderRadius.circular(15)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, ),
              width: Get.width * 0.24,
              height: Get.height * 0.12,
              decoration: BoxDecoration(
                  color: simmerColor, borderRadius: BorderRadius.circular(15)),
            ),
          ],
        ),
      ],
    );
  }
}
