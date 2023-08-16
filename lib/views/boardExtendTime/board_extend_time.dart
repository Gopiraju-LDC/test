// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../constants/imageConstants.dart';
import '../delivery/count_down_timer.dart';
import '../selectAddress/map_widget.dart';

class BoardExtendTime extends StatefulWidget {
  const BoardExtendTime({super.key});

  @override
  State<BoardExtendTime> createState() => _BoardExtendTimeState();
}

class _BoardExtendTimeState extends State<BoardExtendTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Board/Extend Time',
          textAlign: TextAlign.right,
          style: poppinsStyle(
            color: Colors.black,
            fontSize: 16,
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
            onPressed: () {},
            icon: Image.asset(
              ImageIcons.ACCOUNT_HELP,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 40),
            Container(
              height: 230,
              child: CountDownTimer(),
            ),
            SizedBox(height: 30),
            Text(
              'Total Earnings:  ₹3500 ',
              textAlign: TextAlign.right,
              style: poppinsStyle(
                color: Color(0xFF008000),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Total Duration:48hrs',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                timeText('Booking Time', '8pm,20may'),
                timeText('Pickup Time', '10pm,21may'),
                timeText('Return Time', '10pm,22may'),
              ],
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Car Location',
                textAlign: TextAlign.right,
                style: poppinsStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 160,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: MapWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget timeText(String timeType, String time) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          timeType,
          textAlign: TextAlign.right,
          style: poppinsStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 7),
        Text(
          time,
          textAlign: TextAlign.right,
          style: poppinsStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
