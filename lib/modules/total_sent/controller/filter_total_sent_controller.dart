import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/repository/i_filter_total_sent.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FilterTotalSentController extends GetxController with StateMixin {
  final IFilterTotalSent _httpRepository;
  var filterData;
  var filterSelected = 30;
  var reverseList = false;
  TextEditingController filterTextController = TextEditingController();

  FilterTotalSentController(this._httpRepository);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    findTotalSent();
  }

  selectFilter(int filter) async {
    reverseList = false;
    filterTextController.text = '';
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('intervalo', filter);
    filterSelected = filter;
    findTotalSent();
    update();
  }

  Future<void> findTotalSent() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _httpRepository.findTotalSentData();
      filterData = dados;
      change(dados, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Erro ao buscar dados'));
    }
  }

  filterTotalSent(filter) {
    change([], status: RxStatus.loading());
    try {
      final data = filterData
          .where((element) =>
              element.nomeCliente.toString().toLowerCase().contains(filter))
          .toList();
      change(data, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Falha'));
    }
  }

  setOrderList() {
    reverseList = !reverseList;
    if(reverseList == true){
      change(List.from(filterData.reversed), status: RxStatus.success());
    }else{
      change(filterData, status: RxStatus.success());
    }

  }
}
