import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:norteste_gerencial/constants.dart';

import '../../widgets/rounded_buttom.dart';
import '../../widgets/rounded_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  bool isLogin = true;
  late Animation<double> containerSize;
  late AnimationController animationController;
  Duration animationDuration = const Duration(microseconds: 700);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    animationController =
        AnimationController(vsync: this, duration: animationDuration);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const String user = "Usuário"; //HINT DO TEXTFIELD
    const String password = 'Senha'; // HINT DO TEXTFIELD
    double viewInset = MediaQuery.of(context).viewInsets.bottom;
    double defaultLoginSize = kSize.height -
        (kSize.height * 0.2); //ALTURA CONTAINER PRINCIPAL - LOGIN
    double defaultRegisterSize = kSize.height - (kSize.height * 0.1);
    containerSize = Tween<double>(
            begin: kSize.height * 0.1, end: defaultRegisterSize)
        .animate(
            CurvedAnimation(parent: animationController, curve: Curves.linear));
    return Scaffold(
      body: ListView(
        children: [
         const SizedBox(height: 60,),
          //Formulário de Login
          Align(

            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Container(
                width: kSize.width,
                height: defaultLoginSize,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 2,
                    ),
                    Image.asset("assets/images/logo_nt.png"),
                    //LOGO NORDESTE TUBETES
                    const SizedBox(height: 40),
                    RoundedInput(
                        size: kSize,
                        hint: user,
                        obscure: false,
                        icon: const Icon(
                          Icons.email,
                          color: kPrimaryColor,
                        )),
                    RoundedInput(
                        size: kSize,
                        hint: password,
                        obscure: true,
                        icon: const Icon(
                          Icons.lock,
                          color: kPrimaryColor,
                        )),

                    const SizedBox(
                      height: 9,
                    ),

                    const RoundedButtom(title: 'LOGIN', backGroundColor: kPrimaryColor, borderColor: Colors.transparent, textColor: Colors.white, type: 'login',),
                  const  SizedBox(height: 15,),
                    const RoundedButtom(title: 'REGISTRE', backGroundColor: kBackgroundColor, borderColor: kPrimaryColor, textColor: kPrimaryColor, type: 'register', ),


                    // BOTÃO DE LOGIN
                  ],
                ),
              ),
            ),
          ),
          //SizedBox(height: 10,),

          //Container de Cadastro
        ],
      ),
    );
  }

  Widget buildRegisterContainer() {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: containerSize.value,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),
                topRight: Radius.circular(100),
              ),
              color: kBackgroundColor,
            ),
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  animationController.forward();
                  isLogin != isLogin;
                });
              },
              child: const Text(
                "Não tem uma conta? Registre-se!",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
