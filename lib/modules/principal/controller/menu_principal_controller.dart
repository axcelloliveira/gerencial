import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class MenuPrincipalController extends GetxController {
  var viewSearch = false;
  String? selectedFilter = 'Filtrar por';
  var location = '';
  TextEditingController textFilter = TextEditingController();

  @override
  void onInit() async {
    super.onInit();
    await setLocale();
  }

  setStateSearch() {
    viewSearch = !viewSearch;
    textFilter.text = '';
    update();
  }

  setSelectedFilter(value) {
    selectedFilter = value;
    update();
  }

  dataFilter(String filter) {
    switch (filter) {
      case 'Pedido - Interno':
        getPedidoInterno();
        break;
      case 'Pedido - Cliente':
        getPedidoCliente();
        break;
      case 'Lote':
        break;
      case 'Rastreio': getRastreio();
        break;
    }
  }

  getPedidoInterno() {
    Get.offAndToNamed('/filter');
    //MOVER PARA A PAGINA DE PEDIDO INTERNO
  }

  getPedidoCliente() {
    Get.offAndToNamed('/filter');
    //MOVER PARA A PAGINA DE PEDIDO DO CLIENTE
  }

  getLote(String data) {
    //MOVER PARA A PAGINA DE LOTE
  }

  getRastreio() {
    Get.offAndToNamed('rastreabilidadePage');
    //MOVER PARA A PAGINA DE RASTREIO
  }

  setLocale() async {
    final prefs = await SharedPreferences.getInstance();
    String location = prefs.getString('location')!;
    if (location == 'NT') {
      location = 'Nordeste Tubetes';
      update();
    } else if (location == 'NE') {
      location = 'NE Tubetes';
      update();
    } else if (location == 'IP') {
      location = 'IPTC';
      update();
    }
  }
}
