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
      body: Stack(
        children: [
          //CANCEL BUTTOM
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: kSize.width,
              height: kSize.height * 0.1,
              alignment: Alignment.bottomCenter,
              child: IconButton(
                  onPressed: () {
                    animationController.reverse();
                    setState(() {
                      isLogin != isLogin;
                    });
                  },
                  icon: const Icon(Icons.close)),
            ),
          ),
          //Formulário de Login
          Align(
            alignment: Alignment.center,
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
                    const Text(
                      ' ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    const SizedBox(
                      height: 40,
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
                      height: 2,
                    ),
                    const RoundedButtom(title: 'LOGIN'),
                    // BOTÃO DE LOGIN
                  ],
                ),
              ),
            ),
          ),

          //Container de Cadastro

          AnimatedBuilder(
            animation: animationController,
            builder: (context, child) {
              return buildRegisterContainer();
             },
           ),

          Align(
            alignment: Alignment.center,
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
                    const Text(
                      ' ',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    const SizedBox(
                      height: 40,
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
                      height: 2,
                    ),
                    const RoundedButtom(title: 'LOGtesteIN'),
                    // BOTÃO DE LOGIN
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRegisterContainer() {
    return Align(
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
            animationController.forward();

            setState(() {
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
    );
  }
}
