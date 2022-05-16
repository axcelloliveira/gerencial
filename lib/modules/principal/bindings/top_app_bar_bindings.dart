import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/principal/controller/last_sent_controller.dart';
import 'package:norteste_gerencial/modules/principal/controller/menu_principal_controller.dart';
import 'package:norteste_gerencial/modules/principal/controller/top_app_bar_controller.dart';
import 'package:norteste_gerencial/modules/principal/repository/last_sent_repository.dart';
import 'package:norteste_gerencial/repository/i_last_sent_repository.dart';
import '../../../repository/i_card_data_repository.dart';
import '../repository/card_data_repository.dart';

class TopAppBarBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<ICardDataRepository>(CardDataRepository(Get.find()));
    Get.put(TopAppBarController(Get.find()));

    Get.put<ILastSentRepository>(LastSentRepository(Get.find()));
    Get.put(LastSentController(Get.find()));

    Get.lazyPut(() => MenuPrincipalController());


  }
}