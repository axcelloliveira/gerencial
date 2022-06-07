import 'package:norteste_gerencial/modules/total_sent/model/filter_total_sent_model.dart';
import 'package:norteste_gerencial/repository/i_filter_total_sent.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../repository/rest_client.dart';

class FilterTotalSentRepository implements IFilterTotalSent {
  final RestClient restClient;

  FilterTotalSentRepository(this.restClient);

  @override
  Future<List<FilterTotalSentModel>> findTotalSentData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String port = prefs.getString('port')!;
    int intervalo = prefs.getInt('intervalo')!;

    final response = await restClient.get(
      ':$port/eventos2/geralRomaneios?pIntervalo=$intervalo',
      decoder: (body) {
        if (body is List) {
          return body
              .map<FilterTotalSentModel>(
                  (resp) => FilterTotalSentModel.fromMap(resp))
              .toList();
        }
        return body
            .map<FilterTotalSentModel>(
                (resp) => FilterTotalSentModel.fromMap(resp))
            .toList();
      },
    );
    if (response.hasError) {
      throw Exception('Erro ao buscar romaneios');
    }
    return response.body!;
  }
}
