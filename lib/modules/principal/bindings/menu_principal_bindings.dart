import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/principal/controller/menu_principal_controller.dart';

class MenuPrincipalBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MenuPrincipalController());
  }
}