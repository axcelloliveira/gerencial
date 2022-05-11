import 'package:get/get.dart';

class BottomAppBarController extends GetxController {

  var selectedItem = 0;

  selectScreen(value) {
    selectedItem = value;
    update();
  }
}
