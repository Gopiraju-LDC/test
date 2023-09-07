// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields, sort_child_properties_last

import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test_application/formHouse/constants/imageConstants.dart';

import '../../constants/constants.dart';
import 'components/these_month.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  int sliderIndex = 0;
  getCurrentSliderIndex(int index) {
    setState(() {
      sliderIndex = index;
    });
  }

  double _height = 25;
  double _width = 70;

  Duration _animationDuration = Duration(milliseconds: 300);
  bool _isOnline = true;
  bool _switchValue = false;
  _onTapSwitch() {
    setState(() {
      _isOnline = !_isOnline;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 108,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/60x60"),
                              fit: BoxFit.fill,
                            ),
                            shape: OvalBorder(),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 18),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Kakashi Hatke',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Brundavanam',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  tileColor: Colors.white,
                  title: Text(
                    'Promote My Property',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    'For Just ₹2000/month',
                    style: TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 9,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Switch(
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                    activeColor: Color(0xFFF86F03), // Set the active color
                  ),
                )
              ],
            ),
            ListTile(

              tileColor: Color(0x33D9D9D9),
              leading: Icon(Icons.add_circle_outline, color: Colors.black),
              title: Text(
                'Add Another Property',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 9),
            ListTile(
              
              tileColor: Color(0x33D9D9D9),
              leading: Icon(
                Icons.house,
                color: Colors.black,
              ),
              title: Text(
                'Your Bookings',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 9),
            ListTile(
              tileColor: Color(0x33D9D9D9),
              leading: Icon(
                Icons.house,
                color: Colors.black,
              ),
              title: Text(
                'Your Earnings',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 9),
            ListTile(
              tileColor: Color(0x33D9D9D9),
              leading: Icon(
                Icons.house,
                color: Colors.black,
              ),
              title: Text(
                'Bank Details',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 9),
            ListTile(
              tileColor: Color(0x33D9D9D9),
              leading: Icon(
                Icons.house,
                color: Colors.black,
              ),
              title: Text(
                'Agreement Policy',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 9),
            ListTile(
              tileColor: Color(0x33D9D9D9),
              leading: Icon(
                Icons.question_mark,
                color: Colors.black,
              ),
              title: Text(
                'Questions',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                  onTap: _onTapSwitch,
                  child: Container(
                    width: _width,
                    height: _height,
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        AnimatedPositioned(
                          duration: _animationDuration,
                          width: _isOnline ? _width : 0,
                          bottom: 0,
                          top: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.only(right: 10),
                            alignment: Alignment.centerRight,
                            width: _width,
                            height: _height,
                            color: Color(0xFFD9D9D9),
                            child: Text(
                              'Online',
                              textAlign: TextAlign.center,
                              style: poppinsStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                            ),
                          ),
                        ),
                        AnimatedPositioned(
                          duration: _animationDuration,
                          width: _isOnline ? 0 : _width,
                          bottom: 0,
                          top: 0,
                          left: 0,
                          child: Container(
                            width: _width,
                            height: _height,
                            color: Colors.green,
                          ),
                        ),
                        AnimatedPositioned(
                          top: 0,
                          bottom: 0,
                          left: _isOnline ? 0 : (_width - _height),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: primaryColor,
                            ),
                            child: Icon(
                              _isOnline
                                  ? Icons.chevron_right
                                  : Icons.chevron_left,
                              color: Colors.white,
                            ),
                            height: 25,
                            width: 25,
                          ),
                          duration: _animationDuration,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // width: double.infinity,
                    height: 261,
                    child: Stack(
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            autoPlay: true,
                            aspectRatio: 1.5,
                            viewportFraction: 01.0,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) {
                              getCurrentSliderIndex(index);
                            },
                          ),
                          items: [
                            ...List.generate(
                              3,
                              (index) => ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  child: Image.asset(
                                    HomePageImages.SLIDER,
                                    fit: BoxFit.fill,
                                    width: double.infinity,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 3, vertical: 1),
                            width: 40,
                            height: 20,
                            decoration: ShapeDecoration(
                              color:
                                  Colors.black.withOpacity(0.4000000059604645),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '${sliderIndex + 1}/3',
                              textAlign: TextAlign.right,
                              style: poppinsStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Earnings',
                        textAlign: TextAlign.center,
                        style: poppinsStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(Icons.calendar_today_outlined)
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
              child: TabBar(
                indicatorWeight: 0,
                indicatorPadding: EdgeInsets.only(top: 30),
                indicator: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Colors.black,
                labelColor: primaryColor,
                unselectedLabelStyle: poppinsStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                labelStyle: poppinsStyle(
                  color: primaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                isScrollable: true,
                controller: tabController,
                tabs: [
                  Tab(text: 'These month'),
                  Tab(text: 'Last Month'),
                  Tab(text: 'These Year'),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: tabController,
              children: [
                TheseMonth(),
                Container(),
                Container(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
