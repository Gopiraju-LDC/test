// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'components/boost_your_booking_card.dart';
import 'components/upcoming_card.dart';

class InHouse extends StatelessWidget {
  const InHouse({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          BoostYourBookingCard(),
          SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) {
                return UpcommingCard();
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 10);
              },
              itemCount: 3,
            ),
          )
        ],
      ),
    );
  }

  // bookingsWidget() {
  //   return Container(
  //     padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
  //     decoration: ShapeDecoration(
  //       color: Colors.white,
  //       shape: RoundedRectangleBorder(
  //         side: BorderSide(width: 0.15, color: Color(0xFF666666)),
  //         borderRadius: BorderRadius.circular(10),
  //       ),
  //     ),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Text(
  //               'Light Yagami',
  //               style: poppinsStyle(
  //                 color: Colors.black,
  //                 fontSize: 14,
  //                 fontWeight: FontWeight.w500,
  //               ),
  //             ),
  //             Text(
  //               '₹5000',
  //               style: poppinsStyle(
  //                 color: primaryColor,
  //                 fontSize: 14,
  //                 fontWeight: FontWeight.w600,
  //               ),
  //             ),
  //           ],
  //         ),
  //         SizedBox(height: 5),
  //         Text(
  //           '9878865412',
  //           style: poppinsStyle(
  //             color: Colors.black,
  //             fontSize: 12,
  //             fontWeight: FontWeight.w400,
  //           ),
  //         ),
  //         SizedBox(height: 5),
  //         Text(
  //           '10am, 26may2023 - 11am,27may2023',
  //           style: poppinsStyle(
  //             color: Colors.black,
  //             fontSize: 10,
  //             fontWeight: FontWeight.w400,
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }
}
