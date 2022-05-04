import 'package:get/get.dart';

import '../repository/rest_client.dart';

class GeneralBindings implements Bindings {
  @override
  void dependencies() {

    Get.put(RestClient());
  }
}