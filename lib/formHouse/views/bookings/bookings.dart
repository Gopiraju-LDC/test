// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:test_application/formHouse/views/bookings/upcoming_tab.dart';

import '../../constants/constants.dart';
import '../../constants/imageConstants.dart';
import 'completed.dart';
import 'in_house.dart';

class BookingsScreen extends StatefulWidget {
  BookingsScreen({required this.backFunction});

  final backFunction;

  @override
  State<BookingsScreen> createState() => _BookingsScreenState();
}

class _BookingsScreenState extends State<BookingsScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Bookings',
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
            widget.backFunction(0);
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
              FormImages.CALENDAR_SOLID,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 35,
            child: TabBar(
              indicatorWeight: 5,
              indicatorPadding: EdgeInsets.only(top: 30),
              indicator: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(20)
              ),
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.black,
              unselectedLabelStyle: poppinsStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              labelStyle: poppinsStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              isScrollable: true,
              controller: tabController,
              tabs: [
                Tab(text: 'Upcoming'),
                Tab(text: 'In House'),
                Tab(text: 'Completed'),
              ],
            ),
          ),
          SizedBox(height: 25),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                UpComingTab(),
                InHouse(),
                Completed(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
