import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomDrawerController extends GetxController {
  var selectedItem = 0;
  var username = '';
  var location = '';
  var position = '';


  @override
  void onInit() {
    super.onInit();
    getUserData();
  }

  selectScreen(value) {
    selectedItem = value;
    update();
  }

  getUserData() async {
    final prefs = await SharedPreferences.getInstance();
    username = prefs.getString('username')!;
    if (prefs.getString('location') == 'NT') {
      location = 'Nordeste Tubetes';
    } else if (prefs.getString('location') == 'NE') {
      location = 'NE TUBETES';
    } else if (prefs.getString('location') == 'IPTC') {
      location = 'IPTC';
    } else {
      location = '?';
    }
    position = prefs.getString('position')!;
    update();
  }
}
