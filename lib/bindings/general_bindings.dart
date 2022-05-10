import 'package:get/get.dart';
import 'package:norteste_gerencial/controllers/bottom_app_bar_controller.dart';

import '../repository/rest_client.dart';

class GeneralBindings implements Bindings {
  @override
  void dependencies() {

    Get.put(RestClient());
    Get.put(BottomAppBarController());
  }
}