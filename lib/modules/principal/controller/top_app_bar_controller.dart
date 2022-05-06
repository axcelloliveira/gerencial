import 'package:get/get.dart';
import 'package:norteste_gerencial/repository/i_card_data_repository.dart';

class TopAppBarController extends GetxController with StateMixin {
  final ICardDataRepository _httpRepository;

  TopAppBarController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findCardData();
  }

  Future<void> findCardData() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _httpRepository.findAllData();
      change(dados, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Erro ao buscar dados'));
    }
  }
}
