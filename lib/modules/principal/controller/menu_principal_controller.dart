import 'package:get/get.dart';

class MenuPrincipalController extends GetxController{

  var viewSearch = false;
  String? selectedFilter= 'Filtrar por';

  setStateSearch(){
    viewSearch = !viewSearch;
    update();
  }
  setSelectedFilter(value){
    selectedFilter = value;
    update();
  }

}