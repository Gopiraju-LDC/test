// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:test_application/formHouse/constants/constants.dart';
import 'package:test_application/formHouse/views/imageUploadScreen/components/hotels.dart';

import 'components/houses.dart';

class ImageUploadScreen extends StatefulWidget {
  const ImageUploadScreen({super.key});

  @override
  State<ImageUploadScreen> createState() => _ImageUploadScreenState();
}

class _ImageUploadScreenState extends State<ImageUploadScreen>
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
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 4,
                    child: Text(
                      'HYDERBAD FARM HOUSE  ',
                      style: poppinsStyle(
                        color: primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: SizedBox(
                      height: 35,
                      child: TabBar(
                        indicatorWeight: 5,
                        indicatorPadding: EdgeInsets.only(top: 30),
                        indicator: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(20)),
                        indicatorSize: TabBarIndicatorSize.tab,
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
                        labelPadding: EdgeInsets.symmetric(horizontal: 7),
                        isScrollable: true,
                        padding: EdgeInsets.zero,
                        controller: tabController,
                        tabs: [
                          Tab(text: 'Farm House'),
                          Tab(text: 'Hotels'),
                          Tab(text: 'House'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                controller: tabController,
                children: [
                  // UpComingTab(),
                  Container(),
                  Hotels(),
                  House(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
