import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


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

  dataFilter(String filter) {
    switch (filter) {
      case 'Pedido - Interno':
        getPedidoInterno();
        break;
      case 'Pedido - Cliente':
        break;
      case 'Lote':
        break;
      case 'Rastreio':
        break;
    }
  }

  getPedidoInterno() {

    Get.toNamed('/filter');
    //MOVER PARA A PAGINA DE PEDIDO INTERNO
  }

  getPedidoCliente() {
    //MOVER PARA A PAGINA DE PEDIDO DO CLIENTE
  }

  getLote(String data) {
    //MOVER PARA A PAGINA DE LOTE
  }

  getRastreio() {
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
