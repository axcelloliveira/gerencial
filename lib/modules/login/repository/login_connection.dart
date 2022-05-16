import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:norteste_gerencial/local_data/user_local_data.dart';
import '../../../comuns/custom_snackbar.dart';

Future loginConnection(String user, String password) async {
  var url =
      'http://24.152.37.103:8083/eventos2/loginNuvem?Usuario=$user&Senha=$password';

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
        var parsedJson = jsonDecode(resposta.body)[0];
        String id = parsedJson['CODIGO'];
        String username = parsedJson['NOME'];
        String position = parsedJson['CARGO'];
        String location = parsedJson['UNIDADE'];

        UserLocalData userLocalData = UserLocalData();

        await userLocalData.setUserData(id, username, position, location);

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
        showSnackBar(
          message: 'Login incorreto',
          title: 'Erro',
          backgroundColor: Colors.red,
        );
      }
    } else {
      Get.back();
      showSnackBar(
        message: 'Falha ao conectar com o servidor',
        title: 'Verifique sua conexão com a internet',
        backgroundColor: Colors.red,
      );
    }
  } catch (error) {
    Get.back();
    return showSnackBar(
      title: 'Falha ao conectar com o servidor',
      message: 'Verifique sua conexão com a internet',
      backgroundColor: Colors.red,
    );
  }
}
