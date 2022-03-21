import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/constants.dart';
import '../../controller/login_controller.dart';
import '../../widgets/input_container.dart';
import '../../widgets/rounded_buttom.dart';
import '../../comuns/check_bio.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  final LoginController controller = Get.put(LoginController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   if (checkingForBioMetrics() == true){
     print ('xzxxxxx');
   }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const String user = "Usuário"; //HINT DO TEXTFIELD
    const String password = 'Senha'; // HINT DO TEXTFIELD
    TextEditingController tPassoword = TextEditingController();
    TextEditingController tUser      =      TextEditingController();

    double defaultLoginSize = kSize.height -
        (kSize.height * 0.2); //ALTURA CONTAINER PRINCIPAL - LOGIN
    double defaultRegisterSize = kSize.height - (kSize.height * 0.1);

    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 60,
          ),
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

                    InputContainer(
                        child: TextField(
                      cursorColor: kPrimaryColor,
                      obscureText: false,
                      controller: tUser,
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: kPrimaryColor,
                        ),
                        hintText: password,
                        border: InputBorder.none,
                      ),
                    )),
                    InputContainer(
                        child: TextField(
                      controller: tPassoword,
                      cursorColor: kPrimaryColor,
                      obscureText: true,
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: kPrimaryColor,
                        ),
                        hintText: user,
                        border: InputBorder.none,
                      ),
                    )),
                    const SizedBox(
                      height: 9,
                    ),
                    RoundedButtom(
                      username: tUser.text,
                      password: tPassoword.text,
                      title: 'LOGIN',
                      backGroundColor: kPrimaryColor,
                      borderColor: Colors.transparent,
                      textColor: Colors.white,
                      type: 'login',
                    ),


                    // BOTÃO DE LOGIN
                    const SizedBox(
                      height: 10,
                    ),
                   const RoundedButtom(
                      username: '',
                      password: '',
                      title: 'CRIAR CONTA',
                      backGroundColor: kBackgroundColor,
                      borderColor: kPrimaryColor,
                      textColor: kPrimaryColor,
                      type: 'register',
                    ),
                    // BOTÃO DE LOGIN E CRIAR CONTA
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

  void firstAuth() {
    controller.verifyAccess();
    print(controller.username.toString());
  }
}
