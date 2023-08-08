// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test_application/constants/constants.dart';

import 'map_widget.dart';

class SelectAddress extends StatefulWidget {
  const SelectAddress({super.key});

  @override
  State<SelectAddress> createState() => _SelectAddressState();
}

class _SelectAddressState extends State<SelectAddress> {
  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: mediaHeight,
            child: Column(
              children: [
                Expanded(
                  flex: mediaHeight > 800 ? 8 : 7,
                  child: MapWidget(),
                ),
                Expanded(
                  flex: 4,
                  child: Container()  
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 325,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            addressTypeWidget('Home 2', 1),
                            SizedBox(width: 10),
                            addressTypeWidget('Home 3', 2),
                            SizedBox(width: 10),
                            addressTypeWidget('Other', 3),
                          ],
                        ),
                        SizedBox(height: 35),
                        textFieldWidget(houNoCotroller, 'Enter House No'),
                        SizedBox(height: 20),
                        textFieldWidget(
                            houNoCotroller, 'Area, Sector, Locality'),
                        SizedBox(height: 20),
                        textFieldWidget(houNoCotroller, 'Landmark'),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0150AD),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Save Address',
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
          ),
        ],
      ),
    );
  }

  final houNoCotroller = TextEditingController();
  final areaController = TextEditingController();
  final landmarkCOntroller = TextEditingController();

  Widget textFieldWidget(TextEditingController controller, String lableText) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFF666666),
        width: 1,
      ),
    );

    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: border,
        enabled: true,
        enabledBorder: border,
        focusedBorder: border,
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        labelText: lableText,
        labelStyle: poppinsStyle(
          fontSize: 14,
        ),
      ),
    );
  }

  int addressTypeIndex = 1;
  addressTypeWidget(String title, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          addressTypeIndex = index;
        });
      },
      child: Container(
        width: 80,
        height: 30,
        decoration: ShapeDecoration(
          color: addressTypeIndex == index ? Color(0xFF0150AD) : Colors.white,
          shape: RoundedRectangleBorder(
            side: addressTypeIndex == index
                ? BorderSide.none
                : BorderSide(width: 0.15, color: Color(0xFF666666)),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.right,
            style: poppinsStyle(
              color: addressTypeIndex == index ? Colors.white : Colors.black,
              fontSize: 14,
              fontWeight:
                  addressTypeIndex == index ? FontWeight.w500 : FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
