import 'package:norteste_gerencial/modules/dados_filtrados/lote/model/lote_faturamento_model.dart';
import 'package:norteste_gerencial/repository/i_lote_faturamento_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../repository/rest_client.dart';

class LoteFaturamentoRepository implements ILoteFaturamentoRepository {
  final RestClient restClient;

  LoteFaturamentoRepository(this.restClient);

  @override
  Future<List<LoteFaturamentoModel>> findAllData(String data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String port = prefs.getString('port')!;
    String? url;

    url = ':$port/eventos2/faturamentoLote?pLote=$data';

    final response = await restClient.get(
      url,
      decoder: (body) {
        if (body is List) {
          return body
              .map<LoteFaturamentoModel>(
                  (resp) => LoteFaturamentoModel.fromMap(resp))
              .toList();
        }
        return body
            .map<LoteFaturamentoModel>(
                (resp) => LoteFaturamentoModel.fromMap(resp))
            .toList();
      },
    );
    if (response.hasError) {
      throw Exception('Erro ao buscar Cards');
    }
    return response.body!;
  }
}
