import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../dados_filtrados/pedido_interno/view/pedido_interno_page.dart';

class MenuPrincipalController extends GetxController {
  var viewSearch = false;
  String? selectedFilter = 'Filtrar por';
  var location = '';

  @override
  void onInit() async {
    super.onInit();
    await setLocale();
  }

  setStateSearch() {
    viewSearch = !viewSearch;
    update();
  }

  setSelectedFilter(value) {
    selectedFilter = value;
    update();
  }

  dataFilter(String filter, String data) {
    switch (filter) {
      case 'Pedido - Interno':
        getPedidoInterno(data);
        break;
      case 'Pedido - Cliente':
        break;
      case 'Lote':
        break;
      case 'Rastreio':
        break;
    }
  }

  getPedidoInterno(String data) {
    Get.to(PedidoInternoPage());
    //MOVER PARA A PAGINA DE PEDIDO INTERNO
  }

  getPedidoCliente(String data) {
    //MOVER PARA A PAGINA DE PEDIDO DO CLIENTE
  }

  getLote(String data) {
    //MOVER PARA A PAGINA DE LOTE
  }

  getRastreio(String data) {
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
