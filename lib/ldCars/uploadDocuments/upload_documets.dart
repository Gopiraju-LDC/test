// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../constants/imageConstants.dart';

class UploadDocuments extends StatefulWidget {
  const UploadDocuments({super.key});

  @override
  State<UploadDocuments> createState() => _UploadDocumentsState();
}

class _UploadDocumentsState extends State<UploadDocuments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Upload Documents',
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
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'Upload Documents To Conform Booking\nYour Booking On Hold For ',
                          style: poppinsStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: '4:00',
                          style: poppinsStyle(
                            color: Color(0xFF0150AD),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: ' hrs  ',
                          style: poppinsStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  textFieldWidget(
                      adharTextController, 'Aadhar Number', ImageIcons.OK_ICON),
                  SizedBox(height: 20),
                  textFieldWidget(adharTextController, 'Add Driving License',
                      ImageIcons.CAM_ICON),
                  SizedBox(height: 40),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: double.infinity,
                    height: 93,
                    decoration: ShapeDecoration(
                      color: Color(0x19666666),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'You Will Get Exact Car Location And Additional \nDetails After Uploading Documents',
                      style: poppinsStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
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
                'Save',
                textAlign: TextAlign.center,
                style: poppinsStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  final adharTextController = TextEditingController();
  Widget textFieldWidget(
      TextEditingController controller, String lableText, String suffixIcon) {
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
          suffixIcon: Image.asset(
            suffixIcon,
            scale: 4,
          )),
    );
  }
}
