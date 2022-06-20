import 'package:get/get.dart';
import 'package:norteste_gerencial/repository/i_lote_qualidade_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer' as developer;

class LoteQualidadeController extends GetxController with StateMixin {
  final ILoteQualidadeRepository _httpRepository;

  LoteQualidadeController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findQualidadeLote();
  }

  Future<void> findQualidadeLote() async {
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
