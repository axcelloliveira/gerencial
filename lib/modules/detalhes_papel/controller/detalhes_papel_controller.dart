import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/repository/i_detalhes_papel_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer' as developer;

class DetalhesPapelController extends GetxController with StateMixin{
  final IDetalhesPapelRepository _httpRepository;
  var filterData;
  var filterSelected = 'G';
  var reverseList = false;
  var titleSearch = 'Buscar Gramatura';
  TextEditingController filterTextController = TextEditingController();



  DetalhesPapelController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findDetalhesPapel();
  }

  Future<void> findDetalhesPapel() async {
  //  SharedPreferences prefs = await SharedPreferences.getInstance();
 //   String? data = prefs.getString('filter');
    change([], status: RxStatus.loading());
    try {
      final dados = await _httpRepository.findAllData();
      filterData = dados;
      change(dados, status: RxStatus.success());
    } catch (e) {
      developer.log(e.toString(), name: 'Erro de busca');
      change([], status: RxStatus.error('Erro ao buscar dados'));
    }
  }

  filterDetalhesPapel(filter) {
    change([], status: RxStatus.loading());
    try {
      final data = filterData
          .where((element) =>
          element.gramatura.toString().toLowerCase().contains(filter))
          .toList();
      change(data, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Falha'));
    }
  }

  selectFilter(String filter) async {
    reverseList = false;
    filterTextController.text = '';
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('order', filter);
    filterSelected = filter;
    if(filter == 'G'){
      titleSearch = 'Buscar Gramatura';
    }else {
      titleSearch = 'Buscar Largura';
    }

    findDetalhesPapel();
    update();
  }

}