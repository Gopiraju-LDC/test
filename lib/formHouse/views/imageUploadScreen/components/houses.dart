// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_string_interpolations, unused_local_variable, unnecessary_null_comparison

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:test_application/formHouse/constants/constants.dart';

import '../../../../globalWidgets/global_functions.dart';
import '../../../../globalWidgets/gobal_widgets.dart';

class House extends StatefulWidget {
  const House({super.key});

  @override
  State<House> createState() => _HouseState();
}

class _HouseState extends State<House> {
  List<Map> buildingPicsList = [];
  List<Map> bedRoomPicsList = [];
  List<Map> washRoomPicsList = [];
  List<Map> swimmingPoolPicsList = [];

  takePicture(List imagesList, String title) async {
    File imageFile = await GlobalFunctions().takeImage();
    if (imageFile != null) {
      Map imageDetails = {
        'imagePath': imageFile,
        'title': title,
      };
      imagesList.add(imageDetails);
      setState(() {});
    }
  }

  updateImage(List imageList, int index) async {
    File imageFile = await GlobalFunctions().takeImage();
    if (imageFile != null) {
      Map data = imageList[index];
      data['imagePath'] = imageFile;
    }
    setState(() {});
  }

  updateImageTitle(List list, int index, String value) {
    Map data = list[index];
    data['title'] = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print(buildingPicsList);
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Upload Farm House Images',
                              style: poppinsStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'If you lack these items, image uploads are unnecessary',
                              style: poppinsStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    titleWidget('Building Pics', buildingPicsList),
                    SizedBox(height: 4),
                    ImageWidget(
                      imagesList: buildingPicsList,
                      updateImage: updateImage,
                      updateName: updateImageTitle,
                    ),
                    SizedBox(height: 10),
                    titleWidget('Bedroom Pics', bedRoomPicsList),
                    SizedBox(height: 4),
                    ImageWidget(
                      imagesList: bedRoomPicsList,
                      updateImage: updateImage,
                      updateName: updateImageTitle,
                    ),
                    SizedBox(height: 10),
                    titleWidget('Washroom Pics', washRoomPicsList),
                    SizedBox(height: 4),
                    ImageWidget(
                      imagesList: washRoomPicsList,
                      updateImage: updateImage,
                      updateName: updateImageTitle,
                    ),
                    SizedBox(height: 10),
                    titleWidget('Swimming pool Pics', swimmingPoolPicsList),
                    SizedBox(height: 4),
                    ImageWidget(
                      imagesList: swimmingPoolPicsList,
                      updateImage: updateImage,
                      updateName: updateImageTitle,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '1',
                  textAlign: TextAlign.center,
                  style: poppinsStyle(
                    color: primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '2',
                  textAlign: TextAlign.center,
                  style: poppinsStyle(
                    color: Color(0xFF666666),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 11,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Save and Continue',
                  textAlign: TextAlign.center,
                  style: poppinsStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  titleWidget(String title, List imagesList) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: poppinsStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        InkWell(
          onTap: () {
            takePicture(imagesList, title);
          },
          child: SizedBox(
            height: 20,
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Add More',
                  textAlign: TextAlign.center,
                  style: poppinsStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(
                  Icons.add_circle_outline,
                  size: 12,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
