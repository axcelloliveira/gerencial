import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MenuPrincipalController extends GetxController{

  var viewSearch = false;
  String? selectedFilter= 'Filtrar por';
  var location = '';
  @override
  void onInit()async {
    super.onInit();

  }

  setStateSearch(){
    viewSearch = !viewSearch;
    update();
  }
  setSelectedFilter(value){
    selectedFilter = value;
    update();
  }

  choosePage(String filter){
  //  if(filter ){}
  }

   setLocale() async{
    final prefs = await SharedPreferences.getInstance();
    String location = prefs.getString('location')!;
    if (location == 'NT') {
      location = 'Nordeste Tubetes';
      update();
    } else if (location == 'NE') {
      location = 'NE Tubetes';
      update();
    } else if (location == 'IP') {
      location = 'IPTC';
      update();
    }
  }





}