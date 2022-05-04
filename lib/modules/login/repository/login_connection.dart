import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import '../../../comuns/custom_snackbar.dart';

Future loginConnection(String user, String password) async {
  var url =
      'http://10.100.10.161:8083/eventos/Login?Usuario=$user&Senha=$password';

  http.Response resposta;
  try {
    Get.defaultDialog(
        barrierDismissible: false,
        title: 'Validando informações',
        content: const Center(
          child: CircularProgressIndicator(),
        ));
    resposta =
        await http.get(Uri.parse(url)).timeout(const Duration(seconds: 12));
    if (resposta.statusCode == 200) {
      if (resposta.body != 'erro') {
        Get.closeAllSnackbars();
        Get.back();
        Get.toNamed('/MenuPage');
        showSnackBar(
            message: 'Você foi autenticado com sucesso',
            title: 'Sucesso',
            backgroundColor: Colors.green);
      } else {
        Get.closeAllSnackbars();
        Get.back();
        Get.snackbar("Nordeste Tubetes", "Login Incorreto");
      }
    } else {
      Get.back();
      Get.snackbar("Nordeste Tubetes", "Falha na comunicação com o servidor");
    }
  } catch (error) {
    Get.snackbar("Nordeste Tubetes",
        "Falha grave na execução do aplicativo. Tente reiniciar o mesmo.");
  }
}
