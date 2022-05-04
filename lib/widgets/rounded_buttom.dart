import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants.dart';
import '../modules/login/controller/login_controller.dart';
import '../modules/login/repository/login_connection.dart';

class RoundedButtom extends StatelessWidget {
  const RoundedButtom(
      {Key? key,
      required this.title,
      required this.backGroundColor,
      required this.borderColor,
      required this.textColor,
      required this.type,
      required this.username,
      required this.password,
      required this.sendData})
      : super(key: key);
  final String title;
  final Color backGroundColor;
  final Color borderColor;
  final Color textColor;
  final String type;
  final String username;
  final String password;
  final Function sendData;

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());
    return ElevatedButton(
      onPressed: () {
        sendData();
        if (type == 'login') {
          loginConnection(
              controller.tUser.toString(), controller.tPassoword.toString());
        } else {}
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
        padding: const EdgeInsets.symmetric(vertical: 16),
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
