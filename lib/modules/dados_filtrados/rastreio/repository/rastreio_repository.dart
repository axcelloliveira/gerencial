import 'package:norteste_gerencial/modules/dados_filtrados/rastreio/model/rastreio_data_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../repository/i_tabbar_data_repository.dart';
import '../../../../repository/rest_client.dart';

class RastreioRepository implements ITabBarDataRepository {
  final RestClient restClient;

  RastreioRepository(this.restClient);

  @override
  Future<List<RastreioDataModel>> findAllData(String data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String port = prefs.getString('port')!;
    String? url;

      url = ':$port/eventos2/dadosRastreio?pRastreio=$data';

    final response = await restClient.get(url, decoder: (body) {
      if (body is List) {
        return body
            .map<RastreioDataModel>((resp) => RastreioDataModel.fromMap(resp))
            .toList();
      }
      return body
          .map<RastreioDataModel>((resp) => RastreioDataModel.fromMap(resp))
          .toList();
    });
    if (response.hasError) {
      throw Exception('Erro ao buscar Cards');
    }
    return response.body!;
  }
}
