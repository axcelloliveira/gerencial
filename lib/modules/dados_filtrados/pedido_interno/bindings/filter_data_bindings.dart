import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/pedido_interno/controller/chart_controller.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/pedido_interno/controller/products_controller.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/pedido_interno/repository/details_data_repository.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/pedido_interno/repository/products_data_repository.dart';
import 'package:norteste_gerencial/repository/i_chart_data_repository.dart';
import 'package:norteste_gerencial/repository/i_details_data_repository.dart';
import 'package:norteste_gerencial/repository/i_products_data_repository.dart';
import '../controller/details_controller.dart';
import '../repository/chart_data_repository.dart';

class FilterDataBindings implements Bindings{
  @override
  void dependencies() {
    Get.put<IChartDataRepository>(ChartDataRepository(Get.find()));
    Get.put(ChartController(Get.find()));
    Get.put<IProductsDataRepository>(ProductsDataRepository(Get.find()));
    Get.put(ProductsController(Get.find()));
    Get.put<IDetailsDataRepository>(DetailsDataRepository(Get.find()));
    Get.put(DetailsController(Get.find()));

  }

}