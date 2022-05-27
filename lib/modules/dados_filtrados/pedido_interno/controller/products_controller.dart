import 'package:get/get.dart';
import 'package:norteste_gerencial/repository/i_products_data_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:developer';

class ProductsController extends GetxController with StateMixin {
  final IProductsDataRepository _httpRepository;

  ProductsController(this._httpRepository);

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
      log(dados.toString());
      change(dados, status: RxStatus.success());
    } catch (e) {
      log(e.toString(), name: 'Erro de busca');
      change([], status: RxStatus.error('Erro ao buscar dados'));
    }
  }
}
