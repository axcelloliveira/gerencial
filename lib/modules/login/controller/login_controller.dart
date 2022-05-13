import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  var username = 0;
  late String verified;
  String validatedFinger = '';
  var tUser = ''.obs;
  var tPassoword = ''.obs;
  late SharedPreferences login;
  late SharedPreferences access;
  var teste = true;

  void tryLogin(user, password) {
    tUser.update((val) {
      tUser = user;
    });
    tPassoword.update((val) {
      tPassoword = password;
    });
  }

  saveLogin(user) async {
    login = await SharedPreferences.getInstance();
    login.setString('usuario', user.text);
  }

  verifyAccess() async {
    access = await SharedPreferences.getInstance();
    verified = access.getString("usuario").toString();
    return verified;
  }

  firstAccess(user) async {
    username = username + 1;
    login = await SharedPreferences.getInstance();
    login.setString('usuario', user);
  }
}
