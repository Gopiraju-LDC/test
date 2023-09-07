// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../ldCars/constants/constants.dart';

class BoostYourBookingCard extends StatelessWidget {
  const BoostYourBookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.15,
            color: Color(0xFF666666),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Boost Your Bookings by Starting Promotions',
            style: poppinsStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          Icon(
            Icons.chevron_right,
          ),
        ],
      ),
    );
  }
}
