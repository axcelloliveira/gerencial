import 'package:get/get.dart';


class CustomDrawerController extends GetxController{
  var selectedItem = 0;

  selectScreen(value){
    selectedItem = value;
    update();
  }

}