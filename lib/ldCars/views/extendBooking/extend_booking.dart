// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../formHouse/constants/imageConstants.dart';
import '../../constants/constants.dart';
import '../../constants/imageConstants.dart';

class ExtendBooking extends StatefulWidget {
  const ExtendBooking({super.key});

  @override
  State<ExtendBooking> createState() => _ExtendBookingState();
}

class _ExtendBookingState extends State<ExtendBooking> {
  List dayTimes = [
    '1 hour',
    '2 hour',
    '3 hour',
    '4 hour',
    '5 hour',
    '6 hour',
    '7 hour',
    '8 hour',
    '9 hour',
    '10 hour',
    '11 hour',
    '12 hour'
  ];

  List days = [
    '1 Day',
    '2 Days',
    '3 Days',
    '4 Days',
    '5 Days',
    '7 Days',
    '10 Days',
    '15 Days'
  ];

  int dayTimesSelectedIndex = 0;
  selectdayTimes(int index) {
    setState(() {
      dayTimesSelectedIndex = index;
    });
  }

  int daySelectedIndex = 0;
  selectdays(int index) {
    setState(() {
      daySelectedIndex = index;
    });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      log(picked.toString());
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    // final reportIncidentProvider = Provider.of<ReportIncidentProvider>(context);
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2010),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      log(picked.toString());
      // setState(() {
      //   _selectedDate = picked;
      // });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Extend Booking',
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
              FormImages.WHATSAPP_ICON,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            // for animation slicder
            SizedBox(height: 200),
            //
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Actual Return Time: 10:30 am ,22may',
                textAlign: TextAlign.center,
                style: poppinsStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hourly Extension',
                  style: poppinsStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _selectTime(context);
                  },
                  icon: Image.asset(
                    FormImages.CALENDAR_SOLID,
                    height: 24,
                    width: 24,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 9, vertical: 12),
              width: double.infinity,
              // height: 164,
              decoration: ShapeDecoration(
                color: Color(0xFFF3F3F3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: GridView.builder(
                itemCount: dayTimes.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.5,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      selectdayTimes(index);
                    },
                    child: Container(
                      decoration: ShapeDecoration(
                        color: dayTimesSelectedIndex == index
                            ? Color(0xFF0150AD)
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.30,
                            color: Color(0xFF666666),
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${dayTimes[index]}',
                            textAlign: TextAlign.center,
                            style: poppinsStyle(
                              color: dayTimesSelectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          Text(
                            '₹60',
                            textAlign: TextAlign.center,
                            style: poppinsStyle(
                              color: dayTimesSelectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            // SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Daily Extension',
                  style: poppinsStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _selectDate(context);
                  },
                  icon: Image.asset(
                    FormImages.CALENDAR_SOLID,
                    height: 24,
                    width: 24,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 9, vertical: 12),
              width: double.infinity,
              // height: 164,
              decoration: ShapeDecoration(
                color: Color(0xFFF3F3F3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: GridView.builder(
                itemCount: days.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.5,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      selectdays(index);
                    },
                    child: Container(
                      decoration: ShapeDecoration(
                        color: daySelectedIndex == index
                            ? Color(0xFF0150AD)
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.30,
                            color: Color(0xFF666666),
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${days[index]}',
                            textAlign: TextAlign.center,
                            style: poppinsStyle(
                              color: daySelectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          Text(
                            '₹60',
                            textAlign: TextAlign.center,
                            style: poppinsStyle(
                              color: daySelectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Extended Return Time: 10:30am, 15may',
                  textAlign: TextAlign.center,
                  style: poppinsStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Reset',
                    textAlign: TextAlign.center,
                    style: poppinsStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 243,
                height: 42,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0150AD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Proceed with 7days 6hrs',
                    textAlign: TextAlign.center,
                    style: poppinsStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
