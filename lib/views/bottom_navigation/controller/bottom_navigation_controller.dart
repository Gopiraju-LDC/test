import 'package:get/get.dart';

class BottomNavigationController extends GetxController{
  int _index = 0;

  void setIndex(int index){
    _index = index;
    update();
  }

  int get index => _index;
}