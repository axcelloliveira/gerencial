import 'package:get/get.dart';
import 'package:norteste_gerencial/repository/i_lote_faturamento_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer' as developer;

class LoteFaturamentoController extends GetxController with StateMixin {
  final ILoteFaturamentoRepository _httpRepository;

  LoteFaturamentoController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findFaturamentoLote();
  }

  Future<void> findFaturamentoLote() async {
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
