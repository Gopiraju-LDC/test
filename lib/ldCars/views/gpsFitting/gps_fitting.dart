// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:test_application/formHouse/constants/imageConstants.dart';
import 'package:test_application/ldCars/views/gpsFitting/bottom_sheet.dart';

class GpsFitting extends StatefulWidget {
  const GpsFitting({super.key});

  @override
  State<GpsFitting> createState() => _GpsFittingState();
}

class _GpsFittingState extends State<GpsFitting> {
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(FormImages.DRAWER_ICON,scale: 4,),
                      SizedBox(width: 5),
                      Text(
                        'AP39JY8899',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down_sharp)
                    ],
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Status:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: ' GPS Fitting ',
                          style: TextStyle(
                            color: Color(0xFFFFA500),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 43),
              SizedBox(
                height: 200,
                width: 200,
              ),
              Container(
                  width: 328,
                  height: 274,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Image.asset(Images.GPS_IMAGE),
                      SizedBox(height: 16),
                      Text(
                        'Your Appointment Is Fixed With Gps Fitting \nTeam At  12pm 24May . Please Make Sure \nTo Be Available',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  )),
              SizedBox(height: 44),
              Container(
                width: 328,
                height: 42,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.30, color: Color(0xFF0150AD)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Message Customer Care',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF0150AD),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18),
              InkWell(
                onTap: () {
                   showModalBottomSheet(
                    enableDrag: true,
                     context: context,
                    isScrollControlled: true,
                    builder: (context) {
                      return Container(
                          height: 700, child: BottomSheetContent());
                    },
                  );
                },
                child: Container(
                  width: 328,
                  height: 42,
                  decoration: ShapeDecoration(
                    color: Color(0xFF0150AD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'Call Customer Care',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
