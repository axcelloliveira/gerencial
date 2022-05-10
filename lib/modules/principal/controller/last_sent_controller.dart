
import 'package:get/get.dart';
import 'package:norteste_gerencial/repository/i_last_sent_repository.dart';

class LastSentController extends GetxController with StateMixin {
  final ILastSentRepository _httpRepository;

  LastSentController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findCardData();
  }

  Future<void> findCardData() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _httpRepository.findLastSentData();
      change(dados, status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error('Erro ao buscar dados'));
    }
  }
}
