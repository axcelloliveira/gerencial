import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/principal/controller/top_app_bar_controller.dart';
import '../../../repository/i_card_data_repository.dart';
import '../repository/card_data_repository.dart';

class TopAppBarBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<ICardDataRepository>(CardDataRepository(Get.find()));
    Get.put(TopAppBarController(Get.find()));

  }
}