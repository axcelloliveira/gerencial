import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/controller/biometria_controller.dart';
import 'package:norteste_gerencial/pages/login/login_page.dart';

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
      builder: (value)=>
          Container(
          color: Colors.white,
          child: Center(child: Image.asset("assets/images/logo_nt.png"))),
    );
  }

  void getPage()async {
    await Future.delayed(const Duration(seconds: 2));
    print(controller.biometricsAvaliable.value);
   if (controller.hasFingerPrintLock.value){
     controller.authenticateUser(const LoginPage());
   } else {
     Get.offAll(()=> const LoginPage());
   }
  }
}
