// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'constants/constants.dart';
import 'constants/imageConstants.dart';
import 'dashed_line.dart';
import 'views/delivery/count_down_timer.dart';

class DialogBoxWidgets extends StatefulWidget {
  const DialogBoxWidgets({super.key});

  @override
  State<DialogBoxWidgets> createState() => _DialogBoxWidgetsState();
}

class _DialogBoxWidgetsState extends State<DialogBoxWidgets> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 142,
                            child: CountDownTimer(
                                isTextNeed: false, strokeWidth: 10.0),
                          ),
                          SizedBox(height: 10),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'This Trip Earnings: ',
                                  style: poppinsStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: '₹3100',
                                  style: poppinsStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(),
                              ),
                              Expanded(
                                flex: 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 8),
                                    DashedLine(
                                      color: Colors.black,
                                      height: 0.5,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Duration: 3days 4hrs',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  '26-04-2023 10pm',
                                  style: poppinsStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Self Pickup',
                              style: poppinsStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: double.infinity,
                            height: 77,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.15, color: Color(0xFF666666)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pickup Location',
                                        style: poppinsStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Mr. Bean H.No: 26/98 Padamagiri street',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 1.40,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Flexible(
                                  flex: 3,
                                  child: Container(),
                                ),
                                Flexible(
                                  flex: 5,
                                  fit: FlexFit.tight,
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                        Images.MAP_IMAGE,
                                        fit: BoxFit.fill,
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          margin:
                                              EdgeInsets.only(right: 5, top: 5),
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: Color(0xFF0150AD),
                                          ),
                                          child: Image.asset(
                                            ImageIcons.SEND,
                                            scale: 4,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Divider(
                      height: 5,
                      color: Color(0xFF666666),
                      thickness: 1,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Tap to Accept',
                        style: poppinsStyle(
                          color: Color(0xFF666666),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    // SizedBox(height: 10)
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      width: double.infinity,
                      color: Colors.lightBlueAccent,
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 142,
                            child: CountDownTimer(
                                isTextNeed: false, strokeWidth: 10.0),
                          ),
                          SizedBox(height: 10),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'This Trip Earnings: ',
                                  style: poppinsStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: '₹3100',
                                  style: poppinsStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'From 8Pm',
                                  style: poppinsStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 8),
                                    DashedLine(
                                      color: Colors.black,
                                      height: 0.5,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Duration: 3days 4hrs',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  '26-04-2023 10pm',
                                  style: poppinsStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 15),
                          Text(
                            '2km Away',
                            style: poppinsStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Divider(
                      height: 5,
                      color: Color(0xFF666666),
                      thickness: 1,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Tap to Accept',
                        style: poppinsStyle(
                          color: Color(0xFF666666),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
