import 'package:shared_preferences/shared_preferences.dart';

class UserLocalData {
  late SharedPreferences username;
  late SharedPreferences position;
  late SharedPreferences location;


  setUser(String pUser, pPosition, pLocation) async {


    username = await SharedPreferences.getInstance();
    await username.setString('username', pUser);

    position = await SharedPreferences.getInstance();
    await position.setString('position', pPosition);

    location =  await SharedPreferences.getInstance();
    await location.setString('location', pLocation);

  }
}
