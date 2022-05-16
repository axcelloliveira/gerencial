
import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/unidades/controller/location_controller.dart';

class LocationBindings implements Bindings{
  @override
  void dependencies() {
  Get.put(LocationController());
  }

}