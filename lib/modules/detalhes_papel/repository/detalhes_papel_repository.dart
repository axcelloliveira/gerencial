import 'package:norteste_gerencial/modules/detalhes_papel/model/detalhes_papel_model.dart';
import 'package:norteste_gerencial/repository/i_detalhes_papel_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../repository/rest_client.dart';

class DetalhesPapelRepository implements IDetalhesPapelRepository {
  final RestClient restClient;

  DetalhesPapelRepository(this.restClient);

  @override
  Future<List<DetalhesPapelModel>> findAllData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String port = prefs.getString('port')!;
    String? url;

    url = ':$port/eventos2/faturamentoLote?detalhesPapel';

    final response = await restClient.get(url, decoder: (body) {
      if (body is List) {
        return body
            .map<DetalhesPapelModel>((resp) => DetalhesPapelModel.fromMap(resp))
            .toList();
      }
      return body
          .map<DetalhesPapelModel>((resp) => DetalhesPapelModel.fromMap(resp))
          .toList();
    });
    if (response.hasError) {
      throw Exception('Erro ao buscar Cards');
    }
    return response.body!;
  }
}
