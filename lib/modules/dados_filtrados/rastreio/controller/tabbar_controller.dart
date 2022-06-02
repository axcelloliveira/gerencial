import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../repository/i_tabbar_data_repository.dart';


class TabBarController extends GetxController with StateMixin{
  final ITabBarDataRepository _httpRepository;

  TabBarController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findCardData();
  }

  Future<void> findCardData() async {
    change([], status: RxStatus.loading());
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? data = prefs.getString('filter');
      final dados = await _httpRepository.findAllData(data!);
      change(dados, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Erro ao buscar dados'));
    }
  }
}
