import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/total_sent/controller/filter_total_sent_controller.dart';

import '../../../repository/i_filter_total_sent.dart';
import '../repository/filter_total_sent_repository.dart';

class FilterTotalSentBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IFilterTotalSent>(FilterTotalSentRepository(Get.find()));
    Get.lazyPut(() => FilterTotalSentController(Get.find()));
  }
}
