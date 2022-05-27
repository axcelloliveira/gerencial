import 'package:norteste_gerencial/modules/dados_filtrados/pedido_interno/model/details_request_data.dart';
import 'package:norteste_gerencial/repository/i_details_data_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../repository/rest_client.dart';

class DetailsDataRepository implements IDetailsDataRepository {
  final RestClient restClient;

  DetailsDataRepository(this.restClient);

  @override
  Future<List<DetailsDataModel>> findAllData(String data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String port = prefs.getString('port')!;
    String type = prefs.getString('request_type')!;
    String? url;
    if (type == '') {
    } else if (type == 'interno') {
      url = ':$port/eventos2/detalhesPedidoInterno?pPedido=$data';
    } else if (type == 'cliente') {
      url = ':$port/eventos2/detalhesPedidoInterno?pPedido=$data';
    }

    final response = await restClient.get(url!, decoder: (body) {
      if (body is List) {
        return body
            .map<DetailsDataModel>((resp) => DetailsDataModel.fromMap(resp))
            .toList();
      }
      return body
          .map<DetailsDataModel>((resp) => DetailsDataModel.fromMap(resp))
          .toList();
    });
    if (response.hasError) {
      throw Exception('Erro ao buscar Cards');
    }
    return response.body!;
  }
}
