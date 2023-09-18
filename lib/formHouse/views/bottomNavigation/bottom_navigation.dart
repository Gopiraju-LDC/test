// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../constants/imageConstants.dart';
import '../bookings/bookings.dart';
import '../home/home_page.dart';
import '../imageUploadScreen/image_upload_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentPageIndex = 0;

  void changeScreen(int value) {
    setState(() {
      currentPageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          shadows: [
            BoxShadow(
              color: Color(0x26000000),
              blurRadius: 4,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentPageIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: poppinsStyle(
            color: Color(0xFFF86F03),
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
          iconSize: 24,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          unselectedLabelStyle: poppinsStyle(
            color: Colors.black,
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.black,
          elevation: 2,
          onTap: changeScreen,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                FormImages.HOME_ICON,
                scale: 4,
                // color: currentPageIndex == 0 ? primaryColor : greyColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                FormImages.CALENDAR_ICON,
                scale: 4,
                // color: currentPageIndex == 0 ? primaryColor : greyColor,
              ),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                FormImages.WHATSAPP_ICON,
                scale: 4,
                // color: currentPageIndex == 0 ? primaryColor : greyColor,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                FormImages.PROFILE_ICON,
                scale: 4,
                // color: currentPageIndex == 0 ? primaryColor : greyColor,
              ),
              label: 'Home',
            ),
          ],
        ),
      ),
      body: <Widget>[
        HomePage(),
        BookingsScreen(
          backFunction: changeScreen,
        ),
        ImageUploadScreen(),
        Container(),
      ][currentPageIndex],
    );
  }
}
