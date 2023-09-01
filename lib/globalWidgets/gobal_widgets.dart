import 'package:flutter/material.dart';
import '../formHouse/constants/constants.dart';

class GlobalWidgets{
  
   imageWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: 160,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/160x80"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              left: 70,bottom:30 ,
                child: Icon(Icons.camera_alt_outlined))
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          'Entrance Pic',
          style: poppinsStyle(
            color: Colors.black,
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

}