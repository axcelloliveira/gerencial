import 'package:norteste_gerencial/modules/dados_filtrados/pedido_interno/model/chart_data_model.dart';
import 'package:norteste_gerencial/repository/i_chart_data_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../repository/rest_client.dart';

class ChartDataRepository implements IChartDataRepository {
  final RestClient restClient;

  ChartDataRepository(this.restClient);

  @override
  Future<List<ChartDataModel>> findAllData(String data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String port = prefs.getString('port')!;

    final response =
        await restClient.get(':$port/eventos2/graficoPedidoInterno?pPedido=$data', decoder: (body) {
      if (body is List) {
        return body
            .map<ChartDataModel>((resp) => ChartDataModel.fromMap(resp))
            .toList();
      }
      return body
          .map<ChartDataModel>((resp) => ChartDataModel.fromMap(resp))
          .toList();
    });
    if (response.hasError) {
      throw Exception('Erro ao buscar Cards');
    }
    return response.body!;
  }

}
