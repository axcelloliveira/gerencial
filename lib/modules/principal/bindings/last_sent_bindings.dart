import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/principal/controller/last_sent_controller.dart';
import 'package:norteste_gerencial/modules/principal/repository/last_sent_repository.dart';
import 'package:norteste_gerencial/repository/i_last_sent_repository.dart';

class LastSentBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<ILastSentRepository>(LastSentRepository(Get.find()));
    Get.put(LastSentController(Get.find()));

  }
}