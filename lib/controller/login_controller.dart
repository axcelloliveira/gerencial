import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';
import 'package:norteste_gerencial/pages/teste.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController{
  var username = 0;
  late String verified;
  String validatedFinger = '';
  var tUser = ''.obs;
  var tPassoword = ''.obs;
  late SharedPreferences login;
  late SharedPreferences access;



  //METODOS

  void tryLogin(user, password){
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
