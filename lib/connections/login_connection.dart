import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

Future loginConnection(String user, String password) async {

  var url = 'http://10.100.10.161:8083/eventos/loginCola?pLogin=$user&pSenha=$password';

  print(url);

  http.Response resposta;
  try {
    Get.defaultDialog(
        barrierDismissible: false,
        title: 'AGUARDE',
        content: const Center(
        child: CircularProgressIndicator(),
        ));
    resposta = await http.post(Uri.parse(url));
    if (resposta.statusCode == 200) {
      if (resposta.body != 'erro') {
        Get.back();
        Get.snackbar("Nordeste Tubetes", "Login Correto");
      } else {
        Get.back();
        Get.snackbar("Nordeste Tubetes", "Login Incorreto");
      }
    } else {
      Get.back();
      Get.snackbar("Nordeste Tubetes", "Falha na comunicação com o servidor");
    }
  } catch (error) {
    print(error);
    Get.snackbar("Nordeste Tubetes", "Falha grave na execução do aplicativo. Tente reiniciar o mesmo.");
  }
}
