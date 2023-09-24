// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:test_application/formHouse/constants/constants.dart';

import '../../../formHouse/constants/imageConstants.dart';

class BottomSheetContent extends StatefulWidget {
  const BottomSheetContent({super.key});

  @override
  State<BottomSheetContent> createState() => _BottomSheetContentState();
}

class _BottomSheetContentState extends State<BottomSheetContent> {
  List names = [
    '20+ Guaranteed \nBookings',
    'Earn Up to \n20,000-60,000',
    'Damage Taken \nCare By Us',
    'Instant Pay For \nEvery Booking'
  ];
  List images = [
    'assets/icons/Ok.png',
    'assets/icons/MoneyBag.png',
    'assets/icons/CarService.png',
    'assets/icons/InitiateMoneyTransfer.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 9.0),
        child: Column(
          children: [
            SizedBox(height: 11),
            Container(
              width: 100,
              height: 8,
              decoration: ShapeDecoration(
                color: Colors.black.withOpacity(0.6000000238418579),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 19),
            Row(
              children: [
                Text(
                  'Our Partner Benefits',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Container(
              height: 150,
              child: GridView.builder(
                itemCount: 4,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 3,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    width: 158,
                    height: 57,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(images[index]),
                        Text(
                          names[index],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Image.asset(Images.OWNER_APP, scale: 0.9),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'View More',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                Icon(Icons.chevron_right)
              ],
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(FormImages.INSTA),
                SizedBox(width: 10),
                Image.asset(FormImages.YOUTUBE),
              ],
            ),
            SizedBox(height: 12),
            Image.asset(Images.BANNER, scale: 3),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'View More',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                Icon(Icons.chevron_right)
              ],
            ),
            SizedBox(height: 4),
            Container(
              width: double.infinity,
              height: 42,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Required Documents...?',
                      style: TextStyle(
                        color: Color(0xFF0150AD),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color(0xFF0150AD),
                    )
                  ]),
            ),
            SizedBox(height: 4),
            Container(
              width: double.infinity,
              height: 42,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Required Documents...?',
                      style: TextStyle(
                        color: Color(0xFF0150AD),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color(0xFF0150AD),
                    )
                  ]),
            ),
            SizedBox(height: 4),
            Container(
              width: double.infinity,
              height: 42,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Required Documents...?',
                      style: TextStyle(
                        color: Color(0xFF0150AD),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color(0xFF0150AD),
                    )
                  ]),
            ),
            SizedBox(height: 4),
            Container(
              width: double.infinity,
              height: 42,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Required Documents...?',
                      style: TextStyle(
                        color: Color(0xFF0150AD),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color(0xFF0150AD),
                    )
                  ]),
            ),
            SizedBox(height: 4),
            Center(
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container( 
                     decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: ActionSlider.custom(
                      height:42,
                      width: 300,
                      action: (controller) async {
                        // controller.success();
                      },
                      backgroundBorderRadius: BorderRadius.circular(50),
                      backgroundBuilder: (context, state, child) => child!,
                      backgroundChild: Center(
                        child: Text(
                          'Swipe To Earn Money',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                       toggleWidth: 40.0,
                      backgroundColor: Color(0xFF0150AD),
                      toggleMargin: EdgeInsets.all(0),
                      foregroundBuilder: (context, state, child) => child!,
                      foregroundChild: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Color(0xFF0150AD)),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child:
                            Icon(Icons.arrow_forward, color: Color(0xFF0150AD)),
                      ),
                    ),
                  ),
                  Container(
                      width: 40,
                      height: 40,
                      child: Image.asset(
                        FormImages.WHATSAPP_ICON,
                       ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
