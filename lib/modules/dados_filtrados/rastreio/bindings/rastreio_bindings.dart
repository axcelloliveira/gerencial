import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/rastreio/controller/tabbar_controller.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/rastreio/repository/rastreio_repository.dart';
import 'package:norteste_gerencial/repository/i_tabbar_data_repository.dart';


class RastreioBindings implements Bindings{
  @override
  void dependencies() {
    Get.put<ITabBarDataRepository>(RastreioRepository(Get.find()));
    Get.put(TabBarController(Get.find()));


  }

}