import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/detalhes_papel/controller/detalhes_papel_controller.dart';
import 'package:norteste_gerencial/modules/detalhes_papel/repository/detalhes_papel_repository.dart';
import 'package:norteste_gerencial/repository/i_detalhes_papel_repository.dart';

class DetalhesPapelBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IDetalhesPapelRepository>(DetalhesPapelRepository(Get.find()));
    Get.lazyPut(() => DetalhesPapelController(Get.find()));
  }
}
