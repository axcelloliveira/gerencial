import 'package:get/get.dart';
import 'package:norteste_gerencial/repository/i_lote_geral_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer' as developer;

class LoteGeralController extends GetxController with StateMixin {
  final ILoteGeralRepository _httpRepository;

  LoteGeralController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findGeralLote();
  }

  Future<void> findGeralLote() async {
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
