import 'package:norteste_gerencial/modules/dados_filtrados/pedido_interno/model/chart_data_model.dart';

abstract class IChartDataRepository {
  Future<List<ChartDataModel>> findAllData(String data);
}
