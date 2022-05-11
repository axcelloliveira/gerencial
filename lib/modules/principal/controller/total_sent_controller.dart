import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/principal/repository/total_sent_repository.dart';

class TotalSentController extends GetxController {
  var totalSent = '0';

  @override
  void onInit() {
    super.onInit();
    returnTotal();
  }

  returnTotal() async {
    totalSent = (await totalSentConnection())!;

    update();
  }
}
