import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:test_application/constants/constants.dart';

import '../constants/imageConstants.dart';

class GetProfileView extends StatefulWidget {
  const GetProfileView({super.key});

  @override
  State<GetProfileView> createState() => _GetProfileViewState();
}

class _GetProfileViewState extends State<GetProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: Get.width,
            height: Get.height * 0.48,
            child: Stack(
              children: [
                Container(
                  width: Get.width,
                  height: Get.height * 0.35,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Images.PROP_IMG1),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                    bottom: 0,
                    left: Get.width * 0.05,
                    child: Container(
                      height: Get.height * 0.18,
                      width: Get.width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: backgroundColor),
                      child: Row(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.bottomRight,
                              height: Get.width * 0.35,
                              width: Get.width * 0.35,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage(Images.PROFILE_PIC),
                                      fit: BoxFit.cover)),
                              child: Container(margin: EdgeInsets.only(right: 5,bottom: 5),
                                  child: Icon(Icons.camera_alt_outlined,color: Colors.white,)),
                            ),
                            Column(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 8),
                                    width: Get.width * 0.35,
                                    child: Text(
                                      'Kakashi Hatke',
                                      style: poppinsStyle(
                                          fontSize: Get.width * 0.05,
                                          color: textColor,
                                          fontWeight: FontWeight.w400),
                                    )),
                                Container(
                                    margin: EdgeInsets.only(top: 8),
                                    width: Get.width * 0.35,
                                    child: Text(
                                      'Brundavanam',
                                      style: poppinsStyle(
                                          fontSize: Get.width * 0.035,
                                          color: textColor,
                                          fontWeight: FontWeight.w400),
                                    )),
                                Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: Get.width * 0.35,
                                    child: Text(
                                      '+9182647989',
                                      style: poppinsStyle(
                                          fontSize: Get.width * 0.035,
                                          color: textColor,
                                          fontWeight: FontWeight.w400),
                                    )),
                                Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: Get.width * 0.35,
                                    child: Text(
                                      'Pan : GY1234568N7',
                                      style: poppinsStyle(
                                          fontSize: Get.width * 0.035,
                                          color: textColor,
                                          fontWeight: FontWeight.w400),
                                    )),
                                Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width: Get.width * 0.35,
                                    child: Text(
                                      'GST : 114563325889',
                                      style: poppinsStyle(
                                          fontSize: Get.width * 0.035,
                                          color: textColor,
                                          fontWeight: FontWeight.w400),
                                    )),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  alignment: Alignment.bottomRight,
                                  onPressed: () {
                                    // Get.to(EarningDetailView());
                                  },
                                  icon: Image.asset(
                                    width: 25,
                                    height: 25,
                                    ImageIcons.EDIT_ICON,
                                    color: barColor,
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    )),
                Positioned(
                  top: Get.height*0.06,
                    left:Get.height*0.02 ,
                    child: CircleAvatar(backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_back_outlined),)),
                Positioned(
                    top: Get.height*0.06,
                    right:Get.height*0.02 ,
                    child: CircleAvatar(backgroundColor: Colors.white,
                      child: Icon(Icons.camera_alt_outlined,color: barColor,),)),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.015,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            margin: EdgeInsets.all(Get.width * 0.05),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                      width: Get.width * 0.55,
                      child: Text(
                        'Subscribe To Boost Your Bookings',
                        style: poppinsStyle(
                            fontSize: Get.width * 0.04,
                            color: textColor,
                            fontWeight: FontWeight.w400),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 4),
                      width: Get.width * 0.55,
                      child: Text(
                        'Your Will Get 100 More Marketing Than Regular Properties We Give You Top Most Recommends ',
                        style: poppinsStyle(
                            fontSize: Get.width * 0.03,
                            color: textColor,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w400),
                      )),
                ]),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: barColor,
                    padding: EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  child: Text(
                    'Subscribe Now',
                    style: poppinsStyle(
                        fontSize: Get.width * 0.03,
                        color: Colors.white,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          CustomOptionWidget(
            title: 'Add Another Property',
          ),
          CustomOptionWidget(
            title: 'Chat With Super Host',
          ),
          CustomOptionWidget(
            title: 'Bank Details',
          ),
          CustomOptionWidget(
            title: 'Agreement Policy',
          ),
          CustomOptionWidget(
            title: 'Help',
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(
                      left: Get.width * 0.05, top: Get.width * 0.05),
                  width: Get.width * 0.45,
                  child: Text(
                    'In Review',
                    style: poppinsStyle(
                        fontSize: Get.width * 0.055,
                        color: textColor,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w400),
                  )),
              Container(
                  margin: EdgeInsets.only(
                      right: Get.width * 0.05, top: Get.width * 0.05),
                  alignment: Alignment.centerRight,
                  width: Get.width * 0.45,
                  child: Text(
                    'Will Review in 12 Hrs',
                    style: poppinsStyle(
                        fontSize: Get.width * 0.035,
                        color: textColor,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w400),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: Get.width * 0.05,
                        top: Get.width * 0.03,
                        bottom: Get.width * 0.01),
                    width: Get.width * 0.44,
                    height: Get.height * 0.12,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              Images.PROP1,
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Text(
                    'View 1',
                    style: poppinsStyle(
                        fontSize: Get.width * 0.03,
                        color: textColor,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        right: Get.width * 0.05,
                        top: Get.width * 0.03,
                        bottom: Get.width * 0.01),
                    width: Get.width * 0.44,
                    height: Get.height * 0.12,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              Images.PROP2,
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Text(
                    'View 2',
                    style: poppinsStyle(
                        fontSize: Get.width * 0.03,
                        color: textColor,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Container(
            margin: EdgeInsets.all(Get.width * 0.05),
            padding: EdgeInsets.all(Get.width * 0.015),
            decoration: BoxDecoration(
              color: backgroundColor,
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  ImageIcons.LOGOUT_ICON,
                ),
              ),
              Text(
                'Log Out',
                style: poppinsStyle(
                    fontSize: Get.width * 0.055,
                    color: Colors.red,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w400),
              )
            ]),
          )
        ]),
      ),
    );
  }
}

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
