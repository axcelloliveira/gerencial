import 'package:shared_preferences/shared_preferences.dart';

class UserLocalData {
  late SharedPreferences prefs;
  late SharedPreferences username;
  late SharedPreferences position;
  late SharedPreferences location;
  late SharedPreferences port;

  setUserData(String pId, String pUser, pPosition, pLocation) async {
    prefs = await SharedPreferences.getInstance();

    await prefs.setString('id', pId);
    await prefs.setString('username', pUser);
    await prefs.setString('position', pPosition);
    await prefs.setString('location', pLocation);

    switch (pLocation) {
      case 'NT':
        await prefs.setString('port', '8083');
        break;
      case 'NE':
        await prefs.setString('port', '8084');
        break;
      case 'IPTC':
        await prefs.setString('port', '8085');
        break;
    }
  }
}
