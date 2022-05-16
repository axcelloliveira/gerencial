import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:norteste_gerencial/comuns/custom_snackbar.dart';

class LocationRepository {
  Future<String> switchLocationConnection(String id, String location) async {
    var url =
        'http://24.152.37.103:8083/eventos2/trocarUnidade?pUnidade=$location&pCodigo=$id';
    http.Response resposta;
    try {
      resposta =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 12));
      if (resposta.statusCode == 200) {
        if (resposta.body != 'erro') {
          showSnackBar(
            message: 'Unidade trocada com sucesso',
            title: 'Sucesso',
            backgroundColor: Colors.green,
          );
          return 'success';
        } else {
          showSnackBar(
            message: 'Falha ao trocar unidade, tente novamente',
            title: 'Erro',
            backgroundColor: Colors.red,
          );
        }
        return 'error';
      } else {
        showSnackBar(
          message: 'Falha ao conectar com o servidor',
          title: 'Verifique sua conexão com a internet',
          backgroundColor: Colors.red,
        );
        return 'error';
      }
    } catch (error) {
      showSnackBar(
        title: 'Falha ao conectar com o servidor',
        message: 'Verifique sua conexão com a internet',
        backgroundColor: Colors.red,
      );
      return 'error';
    }
  }
}
