import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/lote/controller/lote_geral_controller.dart';
import 'package:norteste_gerencial/repository/i_lote_geral_repository.dart';
import '../repository/lote_geral_repository.dart';

class LoteFilterBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<ILoteGeralRepository>(LoteGeralRepository(Get.find()));
    Get.lazyPut(() => LoteGeralController(Get.find()));
  }
}
