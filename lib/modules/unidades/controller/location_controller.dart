import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/unidades/repository/location_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocationController extends GetxController {
  var switchValueNT = false;
  var switchValueNE = false;
  var switchValueIP = false;

  @override
  void onInit() {
    super.onInit();
    setLocation();
  }

  setLocation() async {
    final prefs = await SharedPreferences.getInstance();
    String location = prefs.getString('location')!;
    if (location == 'NT') {
      switchValueNT = true;
      switchValueNE = false;
      switchValueIP = false;
      update();
    } else if (location == 'NE') {
      switchValueNT = false;
      switchValueNE = true;
      switchValueIP = false;
      update();
    } else if (location == 'IP') {
      switchValueNT = false;
      switchValueNE = false;
      switchValueIP = true;
      update();
    }
  }

  changeNT() async {
    if (!switchValueNT) {
      final prefs = await SharedPreferences.getInstance();
      String position = prefs.getString('position')!;
      String id = prefs.getString('id')!;

      if (position == 'ADM') {
        LocationRepository locationRepository = LocationRepository();
        String response =
            await locationRepository.switchLocationConnection(id, 'NT');
        if (response != 'error') {
          switchValueNT = true;
          switchValueNE = false;
          switchValueIP = false;
          await prefs.setString('port', '8083');
          await prefs.setString('location', 'NT');
          update();
        }
      }
    }
  }

  changeNE() async {
    if (!switchValueNE) {
      final prefs = await SharedPreferences.getInstance();
      String position = prefs.getString('position')!;
      String id = prefs.getString('id')!;

      if (position == 'ADM') {
        LocationRepository locationRepository = LocationRepository();
        String response =
            await locationRepository.switchLocationConnection(id, 'NE');
        if (response != 'error') {
          switchValueNT = false;
          switchValueNE = true;
          switchValueIP = false;
          await prefs.setString('port', '8084');
          await prefs.setString('location', 'NE');
          update();
        }
      }
    }
  }

  changeIP() async {
    if (!switchValueIP) {
      final prefs = await SharedPreferences.getInstance();
      String position = prefs.getString('position')!;
      String id = prefs.getString('id')!;

      if (position == 'ADM') {
        LocationRepository locationRepository = LocationRepository();
        String response =
            await locationRepository.switchLocationConnection(id, 'IP');
        if (response != 'error') {
          switchValueNT = false;
          switchValueNE = false;
          switchValueIP = true;
          await prefs.setString('port', '8085');
          await prefs.setString('location', 'IP');
          update();
        }
      }
    }
  }
}
