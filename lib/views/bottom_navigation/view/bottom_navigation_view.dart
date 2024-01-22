

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_application/constants/constants.dart';
import 'package:test_application/views/bottom_navigation/controller/bottom_navigation_controller.dart';

import '../../../constants/imageConstants.dart';
import '../../../earning data/get_earning_details.dart';
import '../../../earning data/get_profileView.dart';
import '../../delivery/delivery_timer.dart';

class BottomNavigationView extends StatelessWidget {
  const BottomNavigationView({super.key});

  @override
  Widget build(BuildContext context) {

    return GetBuilder<BottomNavigationController>(
      init: BottomNavigationController(),
        builder:  (controller) {
          log('index ${controller.index}');
          return Scaffold(
            body: getPages(controller.index),
            bottomNavigationBar:getBottomBar(controller),
          );
        },

    );
  }

  Widget getPages(int index){

    if(index == 0){
      return   const DeliveryTimer();
    }else if(index == 1){
      return const GetProfileView();
    }else if(index == 2){
      return const EarningDetailView();
    }else {
      return DeliveryTimer();
    }
  }

  Widget getBottomBar(BottomNavigationController controller){
    return BottomNavigationBar(
      selectedLabelStyle: TextStyle(color:   borderColor ),
selectedItemColor: barColor,
        items:[
          getBottomBarItem(image: Iconss.HOME_ICON, name: 'home',isSelected:controller.index == 0, onTap: (){

          }),
          getBottomBarItem(image: Iconss.CALENDAR_ICON, name: 'Bookings',isSelected:controller.index == 1, onTap: (){

          }),
          getBottomBarItem(image: Iconss.EARNING_ICON,name: 'Earnings',isSelected:controller.index == 2, onTap: (){

          }),
          getBottomBarItem(image: Iconss.SUBSCRIPTION_ICON,name: 'Subscription',isSelected:controller.index == 3, onTap: (){

          }),

    ],
unselectedItemColor: borderColor,
      onTap: (index) {
        controller.setIndex(index);
      },
    );
  }

  BottomNavigationBarItem getBottomBarItem({required String image,required String name, required bool isSelected,required Function onTap}){
    return BottomNavigationBarItem(
      icon: Column(
        children: [
          Image.asset(image,width: 20,height: 20,
          color: isSelected == true ? barColor:borderColor),
          Text(name,style: TextStyle(color: isSelected == true ? barColor:borderColor),)
        ],
      ),
      label: '',
      backgroundColor: Colors.white,
    );
  }
}
