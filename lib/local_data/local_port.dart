
import 'package:shared_preferences/shared_preferences.dart';
class LocalPort {

  Future<String?> getPort() async {
    final prefs = await SharedPreferences.getInstance();
    String port;
    if (prefs.getString('location') == 'NT') {
      port = '8083';
    } else if (prefs.getString('location') == 'NE') {
      port = '8084';
    } else if (prefs.getString('location') == 'IPTC') {
      port = '8085';
    } else {
      port = '8085';
    }
    return port;
  }
}
