import 'package:norteste_gerencial/modules/dados_filtrados/lote/model/lote_qualidade_model.dart';
import 'package:norteste_gerencial/repository/i_lote_qualidade_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../repository/rest_client.dart';

class LoteQualidadeRepository implements ILoteQualidadeRepository {
  final RestClient restClient;

  LoteQualidadeRepository(this.restClient);

  @override
  Future<List<LoteQualidadeModel>> findAllData(String data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String port = prefs.getString('port')!;
    String? url;

    url = ':$port/eventos2/qualidadeLote?pLote=$data';

    final response = await restClient.get(url, decoder: (body) {
      if (body is List) {
        return body
            .map<LoteQualidadeModel>((resp) => LoteQualidadeModel.fromMap(resp))
            .toList();
      }
      return body
          .map<LoteQualidadeModel>((resp) => LoteQualidadeModel.fromMap(resp))
          .toList();
    });
    if (response.hasError) {
      throw Exception('Erro ao buscar Cards');
    }
    return response.body!;
  }
}
