import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/comuns/authenticate.dart';
import '../connections/login_connection.dart';
import '../constants.dart';
import '../controller/login_controller.dart';


class RoundedButtom extends StatelessWidget {
  const RoundedButtom(
      {Key? key,
        required this.title,
        required this.backGroundColor,
        required this.borderColor,
        required this.textColor,
        required this.type,
        required this.username,
        required this.password
      })
      : super(key: key);
  final String title;
  final Color backGroundColor;
  final Color borderColor;
  final Color textColor;
  final String type;
  final String username;
  final String password;


  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());
    return ElevatedButton(
      onPressed: () {
        if (type == 'login') {
          if (controller.username == 0) {
            if(username != '' && password != ''){
              loginConnection(username, password);
            }else{
              Get.snackbar('Nordeste Tubetes', 'Insira o usuário e senha para fazer login');
            }
          } else {
            authenticateMe();
          }
        } else {

        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: const BorderSide(color: Colors.white),
            )),
      ),
      child: Container(
        width: kSize.width * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: backGroundColor,
            border: Border.all(color: Colors.white)),
        padding: const EdgeInsets.symmetric(vertical: 20),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
