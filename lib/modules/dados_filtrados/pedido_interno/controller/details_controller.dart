import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer' as developer;
import '../../../../repository/i_details_data_repository.dart';

class DetailsController extends GetxController with StateMixin {
  final IDetailsDataRepository _httpRepository;

  DetailsController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findDetailsData();
  }

  Future<void> findDetailsData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? data = prefs.getString('filter');
    change([], status: RxStatus.loading());
    try {
      final dados = await _httpRepository.findAllData(data!);
      change(dados, status: RxStatus.success());
    } catch (e) {
      developer.log(e.toString(), name: 'Erro de busca');
      change([], status: RxStatus.error('Erro ao buscar dados'));
    }
  }
}
