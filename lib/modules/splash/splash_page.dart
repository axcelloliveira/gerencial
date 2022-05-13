import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../login/controller/biometria_controller.dart';
import '../login/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  BiometriaController controller = BiometriaController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPage();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BiometriaController>(
      init: controller,
      builder: (value) => Container(
          color: Colors.white,
          child: Center(child: Image.asset("assets/images/logo_nt.png"))),
    );
  }

  void getPage() async {
    final prefs = await SharedPreferences.getInstance();
    String username = prefs.getString('username')!;
    await Future.delayed(const Duration(seconds: 2));
    if (username != '') {
      if (controller.hasFingerPrintLock.value) {
        controller.authenticateUser(const LoginPage());
      } else {
      }
    } else {
    }
  }
}
