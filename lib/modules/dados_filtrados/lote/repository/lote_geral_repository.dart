import 'package:norteste_gerencial/repository/i_lote_geral_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../repository/rest_client.dart';
import '../model/lote_geral_model.dart';

class LoteGeralRepository implements ILoteGeralRepository {
  final RestClient restClient;

  LoteGeralRepository(this.restClient);

  @override
  Future<List<LoteGeralModel>> findAllData(String data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String port = prefs.getString('port')!;
    String? url;

    url = ':$port/eventos2/geralLote?pLote=$data';

    final response = await restClient.get(url, decoder: (body) {
      if (body is List) {
        return body
            .map<LoteGeralModel>((resp) => LoteGeralModel.fromMap(resp))
            .toList();
      }
      return body
          .map<LoteGeralModel>((resp) => LoteGeralModel.fromMap(resp))
          .toList();
    });
    if (response.hasError) {
      throw Exception('Erro ao buscar Cards');
    }
    return response.body!;
  }
}
