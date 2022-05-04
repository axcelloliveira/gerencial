import 'package:get/get.dart';

class MenuPrincipalController extends GetxController{

  var viewSearch = false;

  setStateSearch(){
    viewSearch = !viewSearch;
    update();
  }

}