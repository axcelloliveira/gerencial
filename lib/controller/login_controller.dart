import 'package:get/get.dart';
import 'package:norteste_gerencial/pages/teste.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController{
  var username = 0;
  late String verified;
  String validatedFinger = '';
  late SharedPreferences login;
  late SharedPreferences access;


  //METODOS

  saveLogin(user) async {
    login = await SharedPreferences.getInstance();
    login.setString('usuario', user.text);
  }
  verifyAccess()async{
    access = await SharedPreferences.getInstance();
    verified = access.getString("usuario").toString();
    return verified;
  }
  firstAccess(user) async{
    username = username +1;
    login = await SharedPreferences.getInstance();
    login.setString('usuario', user);
  }
  
  menuPage(){
    Get.offAll(const Teste());
  }
}